<?php
//On appelle la fonction getAll()
$allProducts = products::getAll();
//On appelle la fonction ()
if(!empty($_POST['ProductName'])){
  $ProductName = htmlspecialchars($_POST['ProductName']);
  $thisProduct = products::getneByName($ProductName);
  $smarty->assign('this', $thisProduct);
  echo "test1";
}
//On transmets les variables à Smarty
$smarty->assign('products', $allProducts);
?>

