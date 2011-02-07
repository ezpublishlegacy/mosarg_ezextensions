{* Forums - Full view *}

include uri='design:parts/global_variables.tpl' left_menu=false() left_nav_menu=false() extra_menu=false()}


<div class="border-box">


<div class="content-view-full">
    <div class="class-forums">

        <div class="attribute-header">
            <h1>{$node.name|wash()}</h1>
        </div>

        {if $node.object.data_map.description.has_content}
            <div class="attribute-long">
                {attribute_view_gui attribute=$node.data_map.description}
            </div>
        {/if}

            {def $children=fetch_alias( 'children', hash( parent_node_id, $node.node_id,
                                                             offset, $view_parameters.offset,
                                                             sort_by, $node.sort_array,
                                                             class_filter_type, include,
                                                             class_filter_array, array( 'forum' ),
                                                             limit, $page_limit ) )}
        <table class="list forum" cellspacing="0">
            <tr>
                <th> Forum </th>
                <th class="topic">{"Topics"|i18n( "design/ezwebin/full/forums" )}</th>
                <th class="replies">{"Posts"|i18n( "design/ezwebin/full/forums" )}</th>
                <th class="lastreply">{"Last reply"|i18n( "design/ezwebin/full/forums" )}</th>
            </tr>
                {foreach $children as $child}               
            <tr>
                <td class="forum"><a href={$child.url_alias|ezurl}>{$child.name|wash}</a><br />
                    <div class="attribute-short"> {attribute_view_gui attribute=$child.data_map.description} </div></td>
                <td>{fetch('content','list_count',hash(parent_node_id,$child.node_id))}</td>
                <td>{fetch('content','tree_count',hash(parent_node_id,$child.node_id))}</td>
                <td class="last-reply">{def $topic_list=fetch_alias( children, hash( parent_node_id, $child.node_id,
                                                                                     limit, 1,
                                                                                     sort_by, array( 'modified_subnode', false() ) ) )}
                    {foreach $topic_list as $topic}
                         <a href={$topic.url_alias|ezurl}>{$topic.name}</a>
                        <p class="date">{$topic.object.published|l10n(shortdatetime)}</p>
                    {/foreach}
                </td>
            </tr>
             {/foreach}
        </table>
    </div>
</div>


</div>