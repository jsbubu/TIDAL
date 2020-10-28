<form method="POST" page="editProduct" enctype="multipart/form-data">  
  <br><br>
  <div>
            <SELECT name="ProductName" size="1">
            <OPTION selected> Choisir un prduit
            {foreach from=$products item=product}   
                <OPTION>{$product.name}
            {/foreach}
            </SELECT>  <button type="submit" name="find">Rechercher</button><br/>
    </div>
<br><br>
</form>
<HR>
<form method="POST" action="index.php?action=EditProductBdd" enctype="multipart/form-data">
{foreach from=$this item=thisproduct}
<div>
        <label for="id">Id du produit :</label>
            <input type="text" id="demande" name="id" readonly value="{$thisproduct.id}" />
            <br />
</div>
<div>
        <label for="nom">Nom du produit :</label>
            <input type="text" id="demande" name="nom" required value="{$thisproduct.name}" size="50" maxlength="50"/>
            <br />
    </div>
    <div>
            <label for="nom">Description du produit :</label>
            <input type="text" id="demande" name="description" required value="{$thisproduct.description}" size="500" maxlength="500"/>
            <br />
    </div>
    <div>
             <label for="filtre">Type de produit : </label>
            <SELECT name="filtre" required size="1">
                <OPTION selected>{$thisproduct.filtre}
                <OPTION>Table
                <OPTION>Armoire
                <OPTION>Commode
                <OPTION>Bureau
            </SELECT>
            <br/>
    </div>
    <div>
            <label for="nom">Prix : <input type="number" id="demande" value="{$thisproduct.price}" required name="price"/>€</label>
            <br />
    </div>
    <div>
        <input type="text" name="old-image" value="{$thisproduct.image}" hidden/>
        <input type="text" name="old-type" value="{$thisproduct.img_type}" hidden/>
        <p> Image actuelle : <img src="{$thisproduct.image}" /></p>
        <p> Modifier l'image du produit : <input type="file" name="image"></p>
    </div>
    <div>
      <p>Description de l'image du produit :</p>
       <textarea
          id="textarea"
          name="image_desc"
          cols="40"
          rows="4"
          maxlength="80"
          required
          placeholder="Insérez une description pour votre image">{$thisproduct.img_description}</textarea>
    </div>
        <button type="submit" name="send">Envoyer</button><br/>
    {/foreach}
</form>
