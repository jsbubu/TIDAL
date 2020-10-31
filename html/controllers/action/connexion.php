<?php
$servername = "localhost";
$username = "ahmed";
$password = "Je'$'uisendiete26/09/2020";
$dbname= "tragront";
$conn = mysqli_connect($servername, $username, $password, $dbname);
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully";


$first = $_POST['prenom'];
$last = $_POST['nom'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$adress = $_POST['adresse'];
$postcode = $_POST['zip'];
$ville = $_POST['city'];
$login = $_POST['login'];
$password = $_POST['password'];

$sql = "INSERT INTO users (first, last, email, phone, adress, zip, city, login, password) 
VALUES ( '$first', '$last', '$email', '$phone', '$adress', '$postcode', '$ville', '$login', '$password');";

mysqli_query($conn, $sql);




?>  
