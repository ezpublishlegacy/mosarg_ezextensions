{* DO NOT EDIT THIS FILE! Use an override template instead. *}

{if is_unset( $load_javascript_list )}
 {def $load_javascript_list = true()}
{/if}


 {ezscript_load( ezini( 'JavaScriptSettings', 'JavaScriptList', 'design.ini' ) )}

