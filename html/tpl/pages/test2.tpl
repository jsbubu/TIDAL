{foreach from=$products item=product}   
    {$product.id}    
    <img src="data:image/jpeg;base64,'.{$product.image}.'"/>
    <br/>
{/foreach}
