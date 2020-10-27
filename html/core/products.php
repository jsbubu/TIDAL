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
       try {
        global $bdd;
        $result = $bdd->query("SELECT * FROM Products WHERE name='$name_prod'")->fetchAll(PDO::FETCH_ASSOC);
           print_r ($result);
        return ($result);
            } catch (Exception $e) {
        echo 'Erreur : ' . $e->getMessage() . '<br />';
        echo 'N° : ' . $e->getCode();
    }
    } 

    //Ajout d'un produit dans la base de donnée
    public function addOneProduct($nom,$description,$filtre,$price,$base64,$img_type,$image_desc){
    try {
        global $bdd;
        $bdd->query("INSERT INTO Products (name,description,filtre,price,image,img_type,img_description) VALUES ('$nom','$description','$filtre','$price','$base64','$img_type','$image_desc')");
    } catch (Exception $e) {
        echo 'Erreur : ' . $e->getMessage() . '<br />';
        echo 'N° : ' . $e->getCode();
    }
    }
}
?>
