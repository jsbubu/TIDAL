<?php
require_once(_ENT_.'product');

if(isset($_POST['send'])){
    //Récupération du nom de l'image
    $image_name = $_FILES['image']['name'];
    //Récupération de la description de l'image
    $image_desc = htmlspecialchars($_POST['image_desc']);
    //Récupération de la description du produit
    $description = htmlspecialchars($_POST['description']);
    //Récupération du Nom
    $nom = htmlspecialchars($_POST['nom']);
    //Récupération du Prix
    $price = $_POST['price'];
    //$prod = new product($nom,$description,$price,$image_name,$image_desc);
    products::addOneProduct($nom,$description,$price,$image_name,$image_desc);
}
?>
