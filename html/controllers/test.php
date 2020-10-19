<?php

require_once(_CORE_.'products.php');
$prod = new products();

//On appelle la fonction getAll()
$allProducts = $prod->getAll();
//On transmets les variables à Smarty
$smarty->assign('products', $allProducts);
?>
