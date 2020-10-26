
{foreach from=$products item=product}
     
    
    {$product.name}  
    {$product.description}
    <img src="images/<?php echo $product.image ?>" alt="<?php echo $product.img_description ?>" width="10%" /><br>

{/foreach}
