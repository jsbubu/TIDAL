<? php
//On appelle la fonction getAll()
$allUsers = users::getAll();
//On transmets les variables à Smarty
$smarty->assign('customers', $allUsers);
?>