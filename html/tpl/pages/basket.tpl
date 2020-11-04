<form method="POST" page="editProduct" enctype="multipart/form-data">  
<br><br>
    <div>
        <SELECT name="Name" size="1">
            <OPTION selected> Choisir Votre nom
            {foreach from=$customers item=users}   
                <OPTION>{$users.familyname}
            {/foreach}
        </SELECT>  <button type="submit" name="find">Rechercher votre panier</button><br/>
    </div>
<br><br>
</form>

Bonjour ....,
selectionnez votre nom :

<br>
Voici votre Panier : <br>

