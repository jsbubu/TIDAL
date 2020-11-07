<form method="POST" page="" enctype="multipart/form-data">  
<br><br>
    <div>
        <SELECT name="Name" size="1">
            <OPTION selected> Choisissez votre nom
            {foreach from=$customers item=users}   
                <OPTION value="$users.id">{$users.familyname}</OPTION>
            {/foreach}
        </SELECT>  <button type="submit" name="find">Rechercher votre panier</button><br/>
    </div>
<br><br>
</form>

Bonjour ....,
selectionnez votre nom :

<br>
Voici votre Panier : <br>

