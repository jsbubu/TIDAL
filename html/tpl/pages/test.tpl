
{foreach from=$products item=product}
     
    
    {$product.name}  
    {$product.description}
    echo '<img src = "data:image/png;base64,' . base64_encode($product.description) . '" width = "50px" height = "50px"/>'

{/foreach}
