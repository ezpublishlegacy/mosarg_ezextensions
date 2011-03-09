{def $valid_nodes = $block.valid_nodes}

<!-- BLOCK: START -->

<div class="block-type-itemlist">

<div class="block-content">

<div class="two-columns">
<div class="col-1">

    <ul>
    {foreach $valid_nodes as $valid_node max 6}
       <li><a href={$valid_node.url_alias|ezurl()}>{$valid_node.name|wash()}</a></li>
    {/foreach}
    </ul>


</div>
<div class="col-2">


    <ul>
    {foreach $valid_nodes as $valid_node offset 6}
       <li><a href={$valid_node.url_alias|ezurl()}>{$valid_node.name|wash()}</a></li>
    {/foreach}
    </ul>

</div>
</div>

</div>

</div>

<!-- BLOCK: END -->

{undef $valid_nodes}