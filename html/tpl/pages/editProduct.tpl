<form method="POST" action="" enctype="multipart/form-data">  
  <div>
            <SELECT name="filtre" size="1">
            {foreach from=$products item=product}   
                <OPTION>{$product.name}
            {/foreach}
            </SELECT><br/>
    </div>
    </div>
        <button type="submit" name="send">Rechercher</button> <br/>
    </div>
</form>
<HR>
<form method="POST" action="" enctype="multipart/form-data">

    <div>
        <label for="nom">Nom</label>
            <input type="text" id="demande" name="nom" value="" size="50" maxlength="50"/>
            <br />
    </div>
    <div>
            <label for="nom">Description</label>
            <input type="text" id="demande" name="description" value="" size="500" maxlength="500"/>
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
            <label for="nom">Prix</label>
            <input type="number" id="demande" name="price"/>
            <br />
    </div>
    <div>
        <p> Ajoutez votre image</p>
        <input type="file" name="image">
        <div>
            <textarea
                id="textarea"
                name="image_desc"
                cols="40"
                rows="4"
                maxlength="80"
                placeholder="Insérez une description pour votre image"></textarea>
        </div>
        <button type="submit" name="send">Envoyer</button><br/>
    </div>
</form>
