
{foreach from=$products item=product}
     
    
    {$product.name}  
    {$product.description}
    {$product.image'.base64_encode()'}

{/foreach}
