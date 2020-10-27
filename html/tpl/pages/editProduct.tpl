<form method="POST" page="editProduct" enctype="multipart/form-data">  
  <div>
            <SELECT name="ProductName" size="1">
            <OPTION selected> Choisir un prduit
            {foreach from=$products item=product}   
                <OPTION>{$product.name}
            {/foreach}
            </SELECT><br/>
    </div>
    </div>
        <button type="submit" name="find">Rechercher</button> <br/>
    </div>
</form>
<HR>
<form method="POST" action="" enctype="multipart/form-data">
{foreach from=$this item=thisproduct}
    <div>
        <label for="nom">Nom</label>
            <input type="text" id="demande" name="nom" value="{$thisproduct.name}" size="50" maxlength="50"/>
            <br />
    </div>
    <div>
            <label for="nom">Description</label>
            <input type="text" id="demande" name="description" value="{$thisproduct.description}" size="500" maxlength="500"/>
            <br />
    </div>
    <div>
            <SELECT name="filtre" size="1">
                <OPTION selected>Aucun
                <OPTION>Table
                <OPTION>Armoire
                <OPTION>Commode
                <OPTION>Bureau
            </SELECT>
            <br/>
    </div>
    <div>
            <label for="nom">Prix : <input type="number" id="demande" value "{$thisproduct.price}" name="price"/>€</label>
            <br />
    </div>
    <div>
        <p> Image actuelle : <img src="{$thisproduct.image}" /></p>
        <p> Ajoutez votre image : <input type="file" name="image"></p>
        <div>
            <textarea
                id="textarea"
                name="image_desc"
                cols="40"
                rows="4"
                maxlength="80"
                value="{$thisproduct.img_description}" ></textarea>
        </div>
        <button type="submit" name="send">Envoyer</button><br/>
    </div>
    {/foreach}
</form>
