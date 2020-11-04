<? php
  class products
{
  //Récuperer tout les clients
  public function getAll(){
    global $bdd;
    $res = $bdd->query('SELECT * FROM Customers')->fetchAll(PDO::FETCH_ASSOC);
    return ($res);
  }

}

?>
