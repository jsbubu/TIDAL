<form method="POST" page="basket" enctype="multipart/form-data">  
<br><br>
    <div>
        <SELECT name="user" size="1">
            <OPTION selected> Choisissez votre nom
            {foreach from=$customers item=users}   
                <OPTION value="{$users.id}">{$users.familyname} {$users.firstname}</OPTION>
            {/foreach}
        </SELECT>  <button type="submit" name="FindBasket">Rechercher votre panier</button><br/>
    </div>
<br><br>
</form>

Bonjour ....,
selectionnez votre nom :

<br>
Voici votre Panier : <br>

