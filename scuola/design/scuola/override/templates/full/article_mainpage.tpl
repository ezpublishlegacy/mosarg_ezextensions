{* Article (main-page) - Full view *}

{include uri='design:parts/global_variables.tpl' left_menu=true() left_nav_menu=true()}


<div class="border-box">
<div class="content-view-full">
    <div class="class-article-mainpage">
        {if $node.object.state_id_array|contains('6')}
        <div class="wip rounded shadowmore">
            <p>{"Contenuto in preparazione non ancora visibile pubblicamente"|i18n('scuola/state')}</p>
        </div>
        {/if}
        <div class="attribute-header">
            <h1>{$node.data_map.title.content|wash()}</h1>
        </div>
        
        
        {include uri=concat("design:parts/article/article_index_", $node.data_map.index_style.class_content.options[$node.data_map.index_style.value[0]].name|downcase(), ".tpl") used_node=$node}
        {if $node.data_map.body.content.is_empty|not}
            <div class="attribute-long">
                {attribute_view_gui attribute=$node.data_map.body}
            </div>
        {/if}

        {include uri='design:parts/article/page_navigator.tpl' used_node=$node subpage=false()}

        {include uri='design:parts/article/comments.tpl' used_node=$node}

        

        </div>
    
        {include uri='design:parts/object_informations.tpl' style='full'}
    </div>


</div>