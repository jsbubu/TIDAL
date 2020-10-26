
{foreach from=$products item=product}
      
    {$product.name}  
    {$product.description}
    <?php
    echo '<img src="' . $product["image"] . '" />';
     ?>
     <br />
{/foreach}
