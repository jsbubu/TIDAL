<?php
class products
{
    //Récuperer tout les produits
    public function getAll(){
        $bdd = new PDO("mysql:host=localhost;dbname=tragront;charset=utf8", "loris", "Ilikefrance19/05/1999");
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
    public function addOneProduct(){

    }
}
?>
