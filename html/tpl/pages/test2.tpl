
{foreach from=$products item=product}   

        $name= $product['name'];
        $description= $product['description'];
        $image = $product['image'];
        $desc_img = $product['img_description'];
        
        echo "$name <br/><img src="$image" alt="$desc_img" height="20" width="20"/><br/>$description<br/>";

    <br/>
{/foreach}

