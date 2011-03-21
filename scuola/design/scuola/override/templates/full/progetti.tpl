{* Macroarea - Full view *}
{run-once}
 {ezscript_require( array('classes/navigator.js','init_navigator.js'))}
{/run-once}

{if $node.object.data_map.show_menu.data_int}
    {include uri='design:parts/global_variables.tpl' left_menu=true() left_nav_menu=true()}
{else}
    {include uri='design:parts/global_variables.tpl' left_menu=false() left_nav_menu=false()}
{/if}

<div class="content-view-full">
    <div class="class-progetti">
    
   {if $node.data_map.show_children.data_int|not()}   
        <div class="attribute-header">
          <h1>{$node.data_map.name.content|wash()}</h1>
        </div>   
        
      <div class="title-separator"></div>
        <div class="separator"></div>     
        
       <div class="image-block">
              {if $node.data_map.logo.has_content}
                     <div class="attribute-image">
                        {attribute_view_gui image_css_class='shadow' link_class=ezimage_zoom image_class='gallerythumbnailsquare' href=$node.data_map.logo.content[original].url|ezroot attribute=$node.data_map.logo}
                     </div>
               {/if}
               {if $node.data_map.logo1.has_content}
                    <div class="attribute-image">
                        {attribute_view_gui image_css_class='shadow' link_class=ezimage_zoom image_class='gallerythumbnailsquare' href=$node.data_map.logo1.content[original].url|ezroot attribute=$node.data_map.logo1}
                    </div>
                {/if}
                {if $node.data_map.logo2.has_content}
                    <div class="attribute-image">
                        {attribute_view_gui image_css_class='shadow' link_class=ezimage_zoom image_class='gallerythumbnailsquare' href=$node.data_map.logo2.content[original].url|ezroot attribute=$node.data_map.logo2}
                    </div>
                {/if} 
     </div>     
  {/if}
    {if is_set($node.object.data_map.descrizione)}
        <div class="attribute-short">
            {attribute_view_gui attribute=$node.object.data_map.descrizione}
        </div>
    {/if}
 


    {def    $page_limit=10
            $classes=array('progetto')}

    {def $projects=fetch( 'content', 'related_objects',
                           hash( 'object_id', $node.object.id,
                                 'offset', $view_parameters.offset,
                                 'all_relations', true(),
                                 'limit', $page_limit))
         $projects_count=$node.object.related_contentobject_count}
 
   {if gt($projects_count,0)}
     {foreach $projects as $project }
         <div class="content-view-children">
             {node_view_gui view=line content_node=$project.main_node imagesize='articlethumbnailsmall' style='compact' location="group" }
         </div>
    
     {/foreach}

 

    </div>
    {/if}
    {include name=navigator
                     uri='design:navigator/google.tpl'
                     page_uri=$node.url_alias
                     item_count=$projects_count
                     node_id=$node.node_id
                     view_parameters=$view_parameters
                     item_limit=$page_limit}
</div>
{undef}