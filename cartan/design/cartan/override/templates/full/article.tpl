{* Article - Full view *}

{include uri='design:parts/global_variables.tpl' left_menu=true() left_nav_menu=true()}

<div class="border-box">
    <div class="content-view-full">
        <div class="class-article">
       <div class="attribute-byline">
        {if $node.data_map.author.content.is_empty|not()}
        <p class="author">
             {attribute_view_gui attribute=$node.data_map.author}
        </p>
        {/if}
        <p class="date">
             {$node.object.published|l10n(shortdatetime)}
        </p>
        </div>     
            
        <div class="attribute-header">
             {if $node.data_map.image.has_content}
                <div class="attribute-image">
                 
                    <div class="shadow" >{attribute_view_gui attribute=$node.data_map.image link_class=ezimage_zoom href=$node.data_map.image.content[original].url|ezroot image_class=gallerythumbnailsquare}</div>
                 
                </div>
            {/if}
            <h1>{$node.data_map.title.content|wash()}</h1>
        </div>
        
            <div class="infotools"></div>
            
            <div class="separator"></div>

       
            {if $node.data_map.intro.content.is_empty|not}
                <div class="attribute-short">
                    {attribute_view_gui attribute=$node.data_map.intro}
                </div>
            {/if}
        

        
        
        
        {if $node.data_map.body.content.is_empty|not}
            <div class="attribute-long">
                {attribute_view_gui attribute=$node.data_map.body}
            </div>
        {/if}

        <div class="attribute-star-rating">
            {attribute_view_gui attribute=$node.data_map.star_rating}
        </div>

        {include uri='design:parts/related_content.tpl'}

        {if is_unset( $versionview_mode )}
               {attribute_view_gui attribute=$node.data_map.comments}
       {/if}

        

        </div>
    </div>

</div>