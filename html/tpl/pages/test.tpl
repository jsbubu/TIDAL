<div class="grid-container-destination">
{foreach from=$products item=product}
    <div id="grid-item-destination1">
            <div class="grid-content-destination">
                <a href="index.php?page=produit">
                <img src="{$product.image}" alt="{$product.img_description}" />
                    <div class="grid-destination">
                        <div class="grid-destination">
                            <div class="item1">{$product.name}</span></div>
                            <div class="item2">Au prix de {$product.price}€</span></div>
                        </div> 
                    </div>
                </a>
            </div>
    </div>
{/foreach}
</div>
