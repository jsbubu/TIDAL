<form method="POST" action="index.php?action=sendNewProduct.php" enctype="multipart/form-data">

    <div>
        <label for="nom">Nom</label>
            <input type="text" id="demande" name="nom" value="" size="20" maxlength="20"/>
            <br />
    </div>
    <div>
            <label for="nom">Description</label>
            <input type="text" id="demande" name="description" value="" size="50" maxlength="50"/>
            <br />
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
                placeholder="Insérez une description pour votre image">
            </textarea>
        </div>
        <button type="submit" name="send">Envoyer</button>
    </div>
</form>