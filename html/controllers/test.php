<?php

require_once(_CORE_.'Products.php');
$prod = new Products();

//On appelle la fonction getAll()
$allProducts = $prod->getAll();
//On transmets les variables à Smarty
$smarty->assign('products', $allProducts);
?>
