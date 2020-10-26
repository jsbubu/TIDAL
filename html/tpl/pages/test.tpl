
{foreach from=$products item=product}
      
    {$product.name}  
    {$product.description}
    $decod_image = base64_encode ($product.image) ;
    <img src = "'.$decod_image.'" width = "50px" height = "50px" alt="image" /> <br />

{/foreach}
