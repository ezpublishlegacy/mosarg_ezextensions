<div id="links">
    <ul class="flat_menu">
        {if $pagedesign.data_map.tag_cloud_url.data_text|ne('')}
            {if $pagedesign.data_map.tag_cloud_url.content|eq('')}
            <li id="tagcloud"><a href={concat("/content/view/tagcloud/", $pagedata.root_node)|ezurl} title="{$pagedesign.data_map.tag_cloud_url.data_text|wash}">{$pagedesign.data_map.tag_cloud_url.data_text|wash}</a></li>
            {else}
            <li id="tagcloud"><a href={$pagedesign.data_map.tag_cloud_url.content|ezurl} title="{$pagedesign.data_map.tag_cloud_url.data_text|wash}">{$pagedesign.data_map.tag_cloud_url.data_text|wash}</a></li>
            {/if}
        {/if}
        {if $pagedesign.data_map.site_map_url.data_text|ne('')}
            {if $pagedesign.data_map.site_map_url.content|eq('')}
            <li id="sitemap"><a href={concat("/content/view/sitemap/", $pagedata.root_node)|ezurl} title="{$pagedesign.data_map.site_map_url.data_text|wash}">{$pagedesign.data_map.site_map_url.data_text|wash}</a></li>
            {else}
            <li id="sitemap"><a href={$pagedesign.data_map.site_map_url.content|ezurl} title="{$pagedesign.data_map.site_map_url.data_text|wash}">{$pagedesign.data_map.site_map_url.data_text|wash}</a></li>
            {/if}
        {/if}

   
       {if $current_user.is_logged_in}
        {if $pagedesign.data_map.my_profile_label.has_content}
        <li id="myprofile"><a href={concat("/user2/edit/",$current_user.contentobject_id,"/",
                              $current_user.contentobject.class_identifier|downcase)|ezurl} title="{$pagedesign.data_map.my_profile_label.data_text|wash}">{$pagedesign.data_map.my_profile_label.data_text|wash}</a></li>
        {/if}
        {if $pagedesign.data_map.logout_label.has_content}
        <li id="logout"><a href={"/user/logout"|ezurl} title="{$pagedesign.data_map.logout_label.data_text|wash}">{$pagedesign.data_map.logout_label.data_text|wash} ( {$current_user.contentobject.name|wash} )</a></li>
        {/if}
    {else}
        {if and( $pagedesign.data_map.register_user_label.has_content, ezmodule( 'user/register' ) )}
        <li id="registeruser"><a href={"/user2/seltype"|ezurl} title="{$pagedesign.data_map.register_user_label.data_text|wash}">{$pagedesign.data_map.register_user_label.data_text|wash}</a></li>
        {/if}
        {if $pagedesign.data_map.login_label.has_content}
        <li id="login"><a href={"/user/login"|ezurl} title="{$pagedesign.data_map.login_label.data_text|wash}">{$pagedesign.data_map.login_label.data_text|wash}</a></li>
        {/if}
    {/if}

    {if $pagedesign.can_edit}
        <li id="sitesettings"><a href={concat( "/content/edit/", $pagedesign.id, "/a" )|ezurl} title="{$pagedesign.data_map.site_settings_label.data_text|wash}">{$pagedesign.data_map.site_settings_label.data_text|wash}</a></li>
    {/if}
    </ul>
</div>