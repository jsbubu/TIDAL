<?php
//On appelle la fonction getAll()
$allUsers = users::getAll();
//On appelle la fonction ()
if(isset($_POST['FindBasket'])){
  $UserName = htmlspecialchars($_POST['user']);
  $thisProduct = baskets::showBasket($UserName);
  
  //$smarty->assign('this', $thisProduct);
}
//On transmets les variables à Smarty
$smarty->assign('customers', $allUsers);
?>