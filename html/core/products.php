<?php
class products
{
    //Récuperer tout les produits
    public function getAll(){
        global $bdd;
        $res = $bdd->query('SELECT * FROM Products')->fetchAll(PDO::FETCH_ASSOC);
        return ($res);
    } 

    //Récuperer un produit par l'id
    public function getOneById($id_prod){
        //Récupérer un produit en particulier via l'id
    } 

    //Récuperer un produit par le nom
    public function getneByName($name_prod){
        //Récuperer un produit par le nom
    } 

    //Ajout d'un produit dans la base de donnée
    public function addOneProduct($nom,$description,$price,$image_name,$image_desc){
        global $bdd;
        $bdd->query("INSERT INTO Products (name,description,price,image,img_description) VALUES ('$nom','$description','$price','$image_name','$image_desc')");
    }
}
?>
