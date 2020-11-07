<?php
//On appelle la fonction getAll()
$allUsers = users::getAll();
//On appelle la fonction ()
if(!empty($_POST['FindBasket'])){
  $ProductName = htmlspecialchars($_POST['ProductName']);
  $thisProduct = products::getneByName($ProductName);
  $smarty->assign('this', $thisProduct);
}
//On transmets les variables à Smarty
$smarty->assign('customers', $allProducts);
?>