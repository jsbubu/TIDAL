{foreach from=$products item=product}   
    {$product.id}   
    <img src="{$product.image}" />
    <br/>
{/foreach}
