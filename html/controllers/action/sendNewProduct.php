<?php

if(isset($_POST['send'])){
    //Récupération du nom de l'image
    $image_name = $_FILES['image']['name'];
    //Récupération du type de l'image
    $img_type = $_FILES['image']['type'];
    $file_tmp= $_FILES['image']['tmp_name'];
    $file_ext = strtolower( end(explode('.',$image_name)));
    echo "file_ext ".$file_ext;
    $data = file_get_contents($file_tmp);   
    echo "data ".$data;
    $base64 = 'data:' . $img_type . ';base64,' . base64_encode($data);
    echo "Base64 is ".$base64;
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
    //$prod = new product($nom,$description,$price,$image_name,$image_desc);
    //products::addOneProduct($nom,$description,$filtre,$price,$image_name,$img_type,$image_desc);
}
?>
