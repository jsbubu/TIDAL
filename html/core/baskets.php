<? php
  class basket
  {
    //Ajout d'un produit dans le panier
    public function addOneProductToBasket($CustomerId,$ProductId,$quantity){
      try {
          global $bdd;
          $bdd->query("INSERT INTO Basket (customer,product,quantity) VALUES ('$CustomerId','$ProductId','$quantity')");
      } 
      catch (Exception $e) {
          echo 'Erreur : ' . $e->getMessage() . '<br />';
          echo 'N° : ' . $e->getCode();
      }
  }

  
  }
?>