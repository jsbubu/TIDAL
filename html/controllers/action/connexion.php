<?php
$servername = "localhost";
$username = "ahmed";
$password = 'Je$uisendiete26/09/2020';
$dbname= "tragront";
$conn = mysqli_connect($servername, $username, $password, $dbname);
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully";


$first = $_POST['prenom'];
$last = $_POST['nom'];
$adress = $_POST['adresse'];
$login = $_POST['login'];
$password = $_POST['password'];

$sql = "INSERT INTO Customers (firstname, familyname, address, username, password) 
VALUES ( '$first', '$last','$adress', '$login', '$password');";

mysqli_query($conn, $sql);




?>  
