
{foreach from=$products item=product}
      
    {$product.name}  
    {$product.description}
    <?php
    $decod_image = base64_encode ($product.image) ;
    ?>
    {$decod_image} <br />

{/foreach}
