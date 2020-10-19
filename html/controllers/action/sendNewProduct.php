<?php
require_once(_ENT_.'product');

if(isset($_POST['send'])){
    //Récupération du nom de l'image
    $image_name = $_FILES['image']['name'];
    //Récupération de la description de l'image
    $image_desc = htmlspecialchars($_POST['image_desc']);
    $description = htmlspecialchars($_POST['description']);
    $nom = htmlspecialchars($_POST['nom']);
    $price = $_POST['price'];
    $prod = new product($nom,$description,$price,$image_name,$image_desc);
    products::addOneProduct($prod);
}
?>