<?php

if(isset($_POST['send'])){
    //Récupération du nom de l'image
    //$image_name = $_FILES['image']['name'];
    //Récupération du type de l'image
    if (!empty($_POST['ProductName'])){
    $img_type = $_FILES['image']['type'];
    $file_tmp= $_FILES['image']['tmp_name'];
    $data = file_get_contents($file_tmp);   
    $base64 = 'data:' . $img_type . ';base64,' . base64_encode($data);
    } else  {
        $base64 =
    }
    //Récupération de la description de l'image
    $image_desc = htmlspecialchars($_POST['image_desc']);
    //Récupération du nom du flitre attribué au produit
    $filtre = htmlspecialchars($_POST['filtre']);
    //Récupération de la description du produit
    $description = htmlspecialchars($_POST['description']);
    //Récupération du Nom
    $nom = htmlspecialchars($_POST['nom']);
    //Récupération du Prix
    $price = $_POST['price'];
    //Récupération du Prix
    $id = $_POST['id'];
    //appel de la fonction addOneProduct present dans /core
    products::($id,$nom,$description,$filtre,$price,$base64,$img_type,$image_desc);
}
?>
