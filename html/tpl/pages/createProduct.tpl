<form method="POST" action="index.php?action=sendNewProduct" enctype="multipart/form-data">

    <div>
        <label for="nom">Nom du nouveau produit :</label>
            <input type="text" id="demande" name="nom" value="" size="50" maxlength="50" required/>
            <br />
    </div>
    <div>
            <label for="nom">Description du nouveau produit :</label>
            <input type="text" id="demande" name="description" value="" size="500" maxlength="500" required/>
            <br />
    </div>
    <div>
            <SELECT name="filtre" size="1" required>
                <OPTION selected>Aucun
                <OPTION>Table
                <OPTION>Armoire
                <OPTION>Commode
                <OPTION>Bureau
                <OPTION>Informatique
            </SELECT>
            <br />
    </div>
    <div>
            <label for="nom">Prix :</label>
            <input type="number" id="demande" name="price" step="0.01 required"/>
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
                required
                placeholder="Insérez une description pour votre image"></textarea>
        </div>
        <button type="submit" name="send">Envoyer</button>
    </div>
</form>
