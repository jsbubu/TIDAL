<?php
class products
{
    //Récuperer tout les produits
    public function getAll(){
        global $bdd;
        $res = $bdd->query('SELECT * FROM Products ORDER BY id DESC')->fetchAll(PDO::FETCH_ASSOC);
        return ($res);
    } 

    //Modifie un produit en particulier via l'id
    public function editOneById($id,$nom,$description,$filtre,$price,$base64,$img_type,$image_desc){
        try {
            global $bdd;
            $bdd->query("UPDATE Products
            SET name = '$nom',
                description = '$description',
                filtre = '$filtre',
                price = '$price',
                image = '$base64',
                img_type = '$img_type',
                img_description = '$image_desc'
            WHERE id = '$id'");
        }
        catch (Exception $e) {
            echo 'Erreur : ' . $e->getMessage() . '<br />';
            echo 'N° : ' . $e->getCode();
        }

    } 

    //Récuperer un produit par le nom
    public function getneByName($name_prod){
        try {
            global $bdd;
            $result = $bdd->query("SELECT * FROM Products WHERE name='$name_prod'")->fetchAll(PDO::FETCH_ASSOC);
            return ($result);
        } 
        catch (Exception $e) {
            echo 'Erreur : ' . $e->getMessage() . '<br />';
            echo 'N° : ' . $e->getCode();
        }
    } 

    //Récuperer un produit par l'ID special (parametre doit etre un tableau)
    public function getneById($Id_prod){
        try {
            global $bdd;
            $resultId = $bdd->query("SELECT * FROM Products WHERE id IN '$Id_prod'")->fetchAll(PDO::FETCH_ASSOC);
            return ($resultId);
        } 
        catch (Exception $e) {
            echo 'Erreur : ' . $e->getMessage() . '<br />';
            echo 'N° : ' . $e->getCode();
        }
    } 

    //Ajout d'un produit dans la base de donnée
    public function addOneProduct($nom,$description,$filtre,$price,$base64,$img_type,$image_desc){
        try {
            global $bdd;
            $bdd->query("INSERT INTO Products (name,description,filtre,price,image,img_type,img_description) VALUES ('$nom','$description','$filtre','$price','$base64','$img_type','$image_desc')");
        } 
        catch (Exception $e) {
            echo 'Erreur : ' . $e->getMessage() . '<br />';
            echo 'N° : ' . $e->getCode();
        }
    }
}
?>
