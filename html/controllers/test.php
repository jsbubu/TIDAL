<?php

//On appelle la fonction getAll()
$allProducts = products::getAll();
//On transmets les variables à Smarty
header("Content-type: image/gif");
$smarty->assign('products', $allProducts);
?>
