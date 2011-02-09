{* File - block view *}
{if is_set($style)|not()}
    {def $style='compact'}
{/if}
<div class="class-file">
    <div class="attribute-header">
        <h2 ><a href={$node.url_alias|ezurl}>{$node.name|wash()}</a></h2>
    </div>

    {if $node.data_map.description.content.is_empty|not}
        <div class="attribute-long">
            {$node.data_map.description.data_text|strip_tags()|shorten(140)}
        </div>
    {/if}
    <div class="attribute-file">
        <p>{attribute_view_gui attribute=$node.data_map.file file_name=$node.name icon_title=$node.name}</p>
    </div>
        {include uri='design:parts/object_informations.tpl' style=$style}
    </div>
