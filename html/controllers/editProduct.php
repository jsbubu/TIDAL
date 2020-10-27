<?php
//On appelle la fonction getAll()
$allProducts = products::getAll();
//On appelle la fonction ()
if(isset($_POST['ProductName'])){
  $ProductName = htmlspecialchars($_POST['ProductName']);
  $thisProduct = products::getneByName($ProductName);
  $smarty->assign('this', $thisProduct);
}
//On transmets les variables à Smarty
$smarty->assign('products', $allProducts);
?>

