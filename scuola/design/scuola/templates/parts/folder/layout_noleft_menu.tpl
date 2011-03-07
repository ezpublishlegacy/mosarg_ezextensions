   <div class="{$style}">
    <div class="class-folder">
        {* contenuto in preparazione *}
        {if $node.object.state_id_array|contains('6')}
        <div class="wip rounded shadowmore">
            <p>{"Contenuto in preparazione non ancora visibile pubblicamente"|i18n('scuola/state')}</p>
        </div>
        {/if}
        
        <div class="attribute-header">
            {if $node.data_map.icon.has_content}
                <div class="attribute-image">
                     {attribute_view_gui attribute=$node.data_map.icon zoom=false() image_css_class='shadow' link_class=ezimage_zoom href=$node.data_map.icon.content[original].url|ezroot image_class=gallerythumbnailsquare}
                 </div>
            {/if}
            <h1>{$node.data_map.name.content|wash()}</h1>
        </div>
        
        <div class="title-separator"></div>
        <div class="separator"></div>
        
       
        
        
        {if $node.data_map.short_description.has_content}
                <div class="attribute-short">
                    {attribute_view_gui attribute=$node.data_map.short_description}
                </div>
        {/if}
        
        {if $node.data_map.description.has_content}
            <div class="attribute-long">
                {attribute_view_gui attribute=$node.data_map.description}
            </div>
        {/if}


         



        {if $node.object.data_map.show_children.data_int}

                 {if or(gt($children_count,0),gt($articles_count,0))}

            <div class="content-view-children">
                {foreach $articles as $article }
                  {node_view_gui view=line content_node=$article}
                {/foreach}
            </div>

           {if gt($children_count,0)}
           <div class="content-view-children">
                <h4>{"Elementi correlati"|i18n('scuola/folder/line')}</h4>
                 <div class="sortbuttons" >
                    <h4>Ordine:</h4>
                    <a id="sortbuttonup"  class="rounded">Alfabetico ascendente</a>
                    <a id="sortbuttondown"  class="rounded">Alfabetico discendente</a>
                    <a id="timesortup" class="rounded">Temporale crescente</a>
                    <a id="timesortdown" class="rounded">Temporale decrescente</a>
                 </div>
                {foreach $children as $child }
                  {node_view_gui view=line content_node=$child}
                {/foreach}
            </div>

            {include name=navigator
                     uri='design:navigator/google.tpl'
                     page_uri=$node.url_alias
                     item_count=sum($children_count,$articles_count)
                     view_parameters=$view_parameters
                     item_limit=$page_limit}
                     {/if}
            {/if}
        {/if}
    </div>
</div>

   {if gt($cont_count,0)}
   <div class="rightbar">
            <div class="content-view-children">
               {foreach $cont_children as $child }
                  {node_view_gui view=line content_node=$child}
                {/foreach}
            </div>
   </div>
   {/if}



{include uri='design:parts/object_informations.tpl' style='full'}
<script type="text/javascript" src={'javascript/tinysort.js'|ezdesign} ></script>
<script type="text/javascript" src={'javascript/listsort.js'|ezdesign} ></script>