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
    public function addOneProduct($nom,$description,$filtre,$price,$image_name,$img_type,$image_desc){
        global $bdd;
        $bdd->query("INSERT INTO Products (name,description,filtre,price,image,img_type,img_description) VALUES ('$nom','$description','$filtre','$price','$image_name','$img_type','$image_desc')");
        if($bdd){
            echo "<script>alert(\"Ajout du nouveau produit réussi!\")</script>";
        }else{
            echo "Échec d'upload du fichier.";
        } 
    }
}
?>
