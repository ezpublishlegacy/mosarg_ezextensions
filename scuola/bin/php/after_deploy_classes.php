<?php
/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

require 'autoload.php';


function updateClass( $classId )
{
    global $cli, $script, $db, $scheduledScript;

    // If the class is not stored yet, store it now
    $class = eZContentClass::fetch( $classId, true, eZContentClass::VERSION_STATUS_TEMPORARY );
    if ( $class )
    {
        $cli->output( "Storing class" );
        $class->storeDefined( $class->fetchAttributes() );
    }

    // Fetch the stored class
    $class = eZContentClass::fetch( $classId );
    if ( !$class )
    {
        $cli->error( 'Could not fetch class with ID: ' . $classId );
        return;
    }
    $classAttributes = $class->fetchAttributes();
    $classAttributeIDs = array();
    foreach ( $classAttributes as $classAttribute )
    {
        $classAttributeIDs[] = $classAttribute->attribute( 'id' );
    }

    $objectCount = eZContentObject::fetchSameClassListCount( $classId );
    $cli->output( 'Number of objects to be processed: ' . $objectCount );

    $counter = 0;
    $offset = 0;
    $limit = 100;
    $objects = eZContentObject::fetchSameClassList( $classId, true, $offset, $limit );


    // Add and/or remove attributes for all versions and translations of all objects of this class
    while ( count( $objects ) > 0 )
    {
        // Run a transaction per $limit objects
        $db->begin();

        foreach ( $objects as $object )
        {
            $contentObjectID = $object->attribute( 'id' );
            $objectVersions = $object->versions();
            foreach ( $objectVersions as $objectVersion )
            {                               
                $versionID = $objectVersion->attribute( 'version' );

                $translations = $objectVersion->translations();
                foreach ( $translations as $translation )
                {
                    $translationName = $translation->attribute( 'language_code' );
                 
                    // Class attribute IDs of object attributes (not necessarily the same as those in the class, hence the manual sql)
                    $objectClassAttributeIDs = array();
                    
                        $db_query="SELECT id,contentclassattribute_id, data_type_string FROM
                                               ezcontentobject_attribute
                                               WHERE
                                               contentobject_id = '$contentObjectID' AND
                                               version = '$versionID' AND
                                               language_code='$translationName' ";


                        $rows = $db->arrayQuery($db_query);
                        foreach ( $rows as $row )
                        {
                            $objectClassAttributeIDs[$row['id']] = $row['contentclassattribute_id'];
                        }

                    // Quick array diffs
                    $attributesToRemove = array_diff( $objectClassAttributeIDs, $classAttributeIDs ); // Present in the object, not in the class
                    $attributesToAdd = array_diff( $classAttributeIDs, $objectClassAttributeIDs ); // Present in the class, not in the object
                                 
                    //Remove old attributes
                    foreach ( $attributesToRemove as $objectAttributeID=>$classAttributeID)
                    {
                     

                     $objectAttribute = eZContentObjectAttribute::fetch( $objectAttributeID, $versionID );
                        if ( !is_object( $objectAttribute ) )
                            continue;
                       $objectAttribute->remove( $objectAttributeID );
                      
                        
                    }

                    // Add new attributes
                    foreach ( $attributesToAdd as $classAttributeID )
                    {
                        $objectAttribute = eZContentObjectAttribute::create( $classAttributeID, $contentObjectID, $versionID, $translationName );
                        if ( !is_object( $objectAttribute ) )
                            continue;
                        $objectAttribute->setAttribute( 'language_code', $translationName );
                        $objectAttribute->initialize();
                        $objectAttribute->store();
                        $objectAttribute->postInitialize();
                    }
                }
            }

            // Progress bar and Script Monitor progress
            $cli->output( '.', false );
            $counter++;
            if ( $counter % 70 == 0 or $counter >= $objectCount )
            {
                $progressPercentage = ( $counter / $objectCount ) * 100;
                $cli->output( sprintf( ' %01.1f %%', $progressPercentage ) );

                if ( $scheduledScript )
                {
                    $scheduledScript->updateProgress( $progressPercentage );
                }
            }
        }

        $db->commit();

        $offset += $limit;
        $objects = eZContentObject::fetchSameClassList( $classId, true, $offset, $limit );
    }

    // Set the object name to the first attribute, if not set
    $classAttributes = $class->fetchAttributes();

    // Fetch the first attribute
    if ( count( $classAttributes ) > 0 && trim( $class->attribute( 'contentobject_name' ) ) == '' )
    {
        $db->begin();
        $identifier = $classAttributes[0]->attribute( 'identifier' );
        $identifier = '<' . $identifier . '>';
        $class->setAttribute( 'contentobject_name', $identifier );
        $class->store();
        $db->commit();
    }
}


// Init script

$cli = eZCLI::instance();
$endl = $cli->endlineString();

$script = eZScript::instance( array( 'description' => ( "CLI script.\n\n" .
                                                        "Will add missing content object attributes for a given class.\n" .
                                                        "If the class is not given, it will check all classes.\n" .
                                                        "\n" .
                                                        'addmissingobjectattributes.php -s admin --classid=42' ),
                                      'use-session' => false,
                                      'use-modules' => true,
                                      'use-extensions' => true ) );
$script->startup();

$options = $script->getOptions( '[db-user:][db-password:][db-database:][db-driver:][sql][classid:][admin-user:][scriptid:]',
                                '[name]',
                                array( 'db-host' => 'Database host',
                                       'db-user' => 'Database user',
                                       'db-password' => 'Database password',
                                       'db-database' => 'Database name',
                                       'db-driver' => 'Database driver',
                                       'sql' => 'Display sql queries',
                                       'classid' => 'ID of class to update',
                                       'admin-user' => 'Alternative login for the user to perform operation as',
                                       'scriptid' => 'Used by the Script Monitor extension, do not use manually' ) );
$script->initialize();

// Log in admin user
if ( isset( $options['admin-user'] ) )
{
    $adminUser = $options['admin-user'];
}
else
{
    $adminUser = 'admin';
}
$user = eZUser::fetchByName( $adminUser );
if ( $user )
    eZUser::setCurrentlyLoggedInUser( $user, $user->attribute( 'id' ) );
else
{
    $cli->error( 'Could not fetch admin user object' );
    $script->shutdown( 1 );
    return;
}

$db = eZDB::instance();

//$options['classid']=86;

// Do the update

if ( isset( $options['classid'] ) )
{
    updateClass( $options['classid'] );
}
else
{
    $cli->notice( 'The classid parameter was not given, will check all classes.' );
    $classes = eZContentClass::fetchAllClasses( false );
    foreach ( $classes as $class )
    {
        $cli->notice( 'Checking class ' . $class['id'] . ': ' . $class['name'] );
        updateClass( $class['id']);
    }
}

$script->shutdown();


?>
