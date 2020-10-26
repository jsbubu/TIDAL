<?php
$tabImage = array();
//On appelle la fonction getAll()
$allProducts = products::getAll();

foreach ($allProducts as $image){
   // $temp = base64_encode($image.image);
   // $allProducts[$image.image] = $temp;
   echo '<img src="data:image/jpg;base64,'.base64_encode($image.image->load()).'" />';
}
//On transmets les variables à Smarty
$smarty->assign('products', $allProducts);
?>
