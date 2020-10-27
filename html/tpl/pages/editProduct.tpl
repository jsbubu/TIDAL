<form method="POST" page="editProduct" enctype="multipart/form-data">  
  
  <div>
            <SELECT name="ProductName" size="1">
            <OPTION selected> Choisir un prduit
            {foreach from=$products item=product}   
                <OPTION>{$product.name}
            {/foreach}
            </SELECT><button type="submit" name="find">Rechercher</button><br/>
    </div>
<br/>
</form>
<HR>
<form method="POST" action="" enctype="multipart/form-data">
{foreach from=$this item=thisproduct}
<div>
        <label for="id">Id du produit :</label>
            <input type="text" id="demande" name="id" readonly value="{$thisproduct.id}" />
            <br />
</div>
<div>
        <label for="nom">Nom du produit :</label>
            <input type="text" id="demande" name="nom" value="{$thisproduct.name}" size="50" maxlength="50"/>
            <br />
    </div>
    <div>
            <label for="nom">Description du produit :</label>
            <input type="text" id="demande" name="description" value="{$thisproduct.description}" size="500" maxlength="500"/>
            <br />
    </div>
    <div>
             <label for="filtre">Type de produit : </label>
            <SELECT name="filtre" size="1">
                <OPTION selected>{$thisproduct.filtre}
                <OPTION>Table
                <OPTION>Armoire
                <OPTION>Commode
                <OPTION>Bureau
            </SELECT>
            <br/>
    </div>
    <div>
            <label for="nom">Prix : <input type="number" id="demande" value="{$thisproduct.price}" name="price"/>€</label>
            <br />
    </div>
    <div>
        <p> Image actuelle : <img src="{$thisproduct.image}" /></p>
        <p> Ajoutez votre image : <input type="file" name="image"></p>
    </div>
    <div>
      <p>Description de l'image du produit :</p>
       <textarea
          id="textarea"
          name="image_desc"
          cols="40"
          rows="4"
          maxlength="80"
          placeholder="Insérez une description pour votre image">{$thisproduct.img_description}</textarea>
    </div>
        <button type="submit" name="send">Envoyer</button><br/>
    {/foreach}
</form>
