
{foreach from=$products item=product}
     
    
    {$product.name}  
    {$product.description}
    <img src = "data:$product.image;base64,' . base64_encode($product.image) . '" width = "50px" height = "50px"/> <br />

{/foreach}
