<form method="POST" page="basket" enctype="multipart/form-data">  
<br><br>
    <div>
        <SELECT name="user" size="1">
            <OPTION selected> Choisissez votre nom :</OPTION>
            {foreach from=$customers item=users}   
                <OPTION value="{$users.id}">{$users.familyname} {$users.firstname}</OPTION>
            {/foreach}
        </SELECT>  <button type="submit" name="FindBasket">Rechercher votre panier</button><br/>
    </div>
<br><br>
</form>


<br>
Voici votre Panier : <br>

{foreach from=$products item=produits}
<div id="grid-item-destination1">
            <div class="grid-content-destination">
                <a href="index.php?page=produit"><figure><img  src="{$produits.image}" alt="{$produits.img_description} style="width:100%;" /></figure>
                    <div class="grid-destination">
                        <div class="grid-destination">
                            <div class="item1">{$produits.name}</div>
                            {
                                $Key=array_search($produits.id,$basket)
                                if($Key){
                                    $quantity=$basket[$Key][quantity]
                                }
                            }
                            <div class="item2">Quantité : {$quantity}</div>
                        </div> 
                    </div>
                </a>
            </div>
    </div>
{/foreach}



