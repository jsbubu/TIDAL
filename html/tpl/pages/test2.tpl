{foreach from=$products item=product}   
        <img src="data:image/jpeg;base64,{$product.image}"/>
    <br/>
{/foreach}
