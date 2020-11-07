<?php
//On appelle la fonction getAll()
$allUsers = users::getAll();
//On appelle la fonction ()
if(isset($_POST['FindBasket'])){
  $UserName = htmlspecialchars($_POST['user']);
  $BasketUser = baskets::showBasket($UserName);
  $TabIdProd = array();

  for($i = 0, $size = count($BasketUser); $i < $size; ++$i) {
    array_push($TabIdProd,$BasketUser[$i]['product']);
    }
  echo $TabIdProd;
  //$valeurs = implode (',', $TabIdProd);
  //echo $valeurs;
  //$smarty->assign('this', $thisProduct);
}
//On transmets les variables à Smarty
$smarty->assign('customers', $allUsers);
?>