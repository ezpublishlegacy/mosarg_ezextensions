{* Gallery - Block view *}
<div class="content-view-embed">
    <div class="class-gallery">
        <h2><a href={$node.url_alias|ezurl}>{$node.name|wash}</a></h2>
    {def $children=fetch_alias( children, hash( parent_node_id, $node.node_id, limit, 5 ) ) }
    <div class="content-view-children">
    {foreach $children as $child}
         {node_view_gui view=block_image image_class=$image_class content_node=$child}
    {/foreach}
    </div>

    </div>
</div>

