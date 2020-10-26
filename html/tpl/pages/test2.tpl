{foreach from=$products item=product}   

        {$product.name}
        {$product.image}
        <img src="data:image/jpeg;base64,'{$product.image}''"/>
    <br/>
{/foreach}
