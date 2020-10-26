<div class="grid-container-destination">
{foreach from=$products item=product}
    <div id="grid-item-destination1">
            <div class="grid-content-destination">
                <a href="/tpl/reservation.html?id=oslo">
                <img id="img_size" src="{$product.image}"/>
                    <div class="grid-destination">
                        <div class="grid-destination">
                            <div class="item1">{$product.name}</span></div>
                            <div class="item2">{$product.price}</span></div>
                            <div class="item3"><span class="temp-weather1"></span></div>
                        </div> 
                    </div>
                </a>
            </div>
    </div>
{/foreach}
</div>
