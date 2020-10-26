
{foreach from=$products item=product}   
    {$product.name}  
    {$product.description}
    <?php echo '<img src="data:image/jpeg;base64,'.base64_encode($product.image).'"/>';    
    ?>

{/foreach}

