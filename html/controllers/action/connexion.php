<?php
$servername = "localhost";
$username = "ahmed";
$password = 'Je$uisendiete26/09/2020';
$dbname= "tragront";
$conn = mysqli_connect($servername, $username, $password, $dbname);
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}      

require_once 'function.php';
if (isset($_POST['submit'])) {
  $first = $_POST['prenom'];
  $last = $_POST['nom'];
  $adress = $_POST['adresse'];
  $login = $_POST['login'];
  $password = $_POST['password'];
  $hashedpwd = password_hash($password, PASSWORD_DEFAULT).
  $passwordRepeat = $_POST['password2'];

  if(pwdMatch($password, $passwordRepeat) !== false) {
   header ("location: ./signup.php?error=pwdnomatch"); 
  }

  if(uidExist($conn, $login) !== false){
    header ("location: ./signup.php?error=UidAlreadyExist"); 
  }
  
  $sql = "INSERT INTO users (first, last, adress, login, password) 
  VALUES ( '$first', '$last', '$adress', '$login', '$hashedpwd');";

  mysqli_query($conn, $sql);
  echo "<h1>Välkommen !</h1> 
  <p>Vous êtes bien inscrit. Si vous souahitez vous connecter cliquer <a href=../projet/signup.html>ici</a></p>
  <p>Sinon cliquez ici pour retourner à la racine du site</p> ";

} else {

  header('Location: signup.html');      

}



?>  
