{foreach from=$products item=product}   
    {$product.id}
    {$product.name}
    <img src="{$product.image}" />
    <br/>
{/foreach}
