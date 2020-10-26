<?php
$tabImage = array();
//On appelle la fonction getAll()
$allProducts = products::getAll();

//foreach ($allProducts as $image){
   // $temp = base64_encode($image.image);
   // $allProducts[$image.image] = $temp;
//}
header("Content-Type: image/jpg");
//On transmets les variables à Smarty
$smarty->assign('products', $allProducts);
?>
