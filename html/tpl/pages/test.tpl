<div class="grid-container-destination">
{foreach from=$products item=product}
    <div id="grid-item-destination1">
            <div class="grid-content-destination">
                <a href="/tpl/reservation.html?id=oslo"><figure><img id="image1" src="" style="width:100%;"></figure>
                    <div class="grid-destination">
                        <div class="grid-destination">    
                              {$product.name}  
                              {$product.description}
                              <?php
                              echo ('<img src="'.$product['image'].'"/>');
                              ?>
                            <div class="item1"><span class="pays1"></span></div>
                            <div class="item2"><span class="prixDepart1"></span></div>
                            <div class="item3"><span class="temp-weather1"></span></div>
                        </div> 
                    </div>
                </a>
            </div>
    </div>
{/foreach}
</div>
