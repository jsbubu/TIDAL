
{foreach from=$products item=product}
     
    
    {$product.name}  
    {$product.description}
    header("Content-type: image/jpeg");
    {$product.image}

{/foreach}
