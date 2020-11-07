<?php
  class baskets
  {
    //Ajout d'un produit dans le panier
    public function addOneProductToBasket($CustomerId,$ProductId,$quantity){
      try {
          global $bdd;
          $bdd->query("INSERT INTO Basket (customer,product,quantity) VALUES ('$CustomerId','$ProductId','$quantity')");
      } 
      catch (Exception $e) {
          echo 'Erreur : ' . $e->getMessage() . '<br/>';
          echo 'N° : ' . $e->getCode();
      }
    }

    public function showBasket($CustomerId){
      try {
          global $bdd;
          $basket = $bdd->query("SELECT * FROM Basket WHERE customer='$CustomerId'");
          return ($basket);
      } 
      catch (Exception $e) {
          echo 'Erreur : ' . $e->getMessage() . '<br/>';
          echo 'N° : ' . $e->getCode();
      }
    }

  }

?>