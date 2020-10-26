<?php
$tabImage = array();
//On appelle la fonction getAll()
$allProducts = products::getAll();

foreach ($allProducts as $image){
   // $temp = base64_encode($image.image);
   // $allProducts[$image.image] = $temp;
   echo $image['id'];
   echo '<img src="data:image/'.$image['img_type'].','.base64_encode($image['image']).'" />';
}
//On transmets les variables à Smarty
$smarty->assign('products', $allProducts);
?>
