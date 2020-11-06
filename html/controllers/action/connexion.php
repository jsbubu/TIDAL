<?php
$servername = "localhost";
$username = "ahmed";
$password = 'Je$uisendiete26/09/2020';
$dbname= "tragront";
$conn = mysqli_connect($servername, $username, $password, $dbname);
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}
echo "<!DOCTYPE html>
<html lang='fr'>

<head>
    <meta charset='UTF-8'>
    <link rel='stylesheet' href='TIDAL/html/web/css/style.css' />
    <link rel='stylesheet' href='TIDAL/html/web/css/style.css' />
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <meta http-equiv='X-UA-Compatible' content='ie=edge'>
    <title>Création de compte</title>
</head>

<body>
<h1>Välkommen !</h1> <p>Votre inscription s'est déroulé avec succés. Si vous souahitez vous connecter cliquer ici</p><p>Sinon cliquez ici pour retourner à l'accueil du site</p>";


$firstname = $_POST['prenom'];
$familyname = $_POST['nom'];
$adress = $_POST['adresse'];
$username = $_POST['login'];
$password = $_POST['password'];

$sql = "INSERT INTO Customers (firstname, familyname, address, username, password) 
VALUES ( '$firstname', '$familyname','$adress', '$username', '$password');";

mysqli_query($conn, $sql);




?>  
