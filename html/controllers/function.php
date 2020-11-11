<?php
function pwdMatch($password, $password2) {
    $result;
    if ($password !== $password2) {
        $result = true;
        
    }else{
        $result = false;
        
    }
    return $result;
}

function uidExist($conn, $login) {

    $sql = "SELECT * FROM Customers WHERE login = ?;";
    $stmt = mysqli_stmt_init($conn); 
    if (!mysqli_stmt_prepare($stmt, $sql)) {
    header("location: ../signup.php?error=stmtfailed");
    exit();  
    }
mysqli_stmt_bind_param($stmt, "s", $login);
mysqli_stmt_execute($stmt);

$resultData = mysqli_stmt_get_result($stmt);
if ($row = mysqli_fetch_assoc($resultData)){
return $row;

}else {
    $result = false;
    return $result;
}

mysql_stmt_close($stmt);

}


function createUser($conn, $first, $last, $adress, $login, $password) {

    $sql = "INSERT INTO Customers (first, last, adress, login, password) VALUES (?, ?, ?, ?, ?);";
    $stmt = mysqli_stmt_init($conn); 
    if (!mysqli_stmt_prepare($stmt, $sql)) {
    header("location: ../signup.php?error=stmtfailed");
    exit();  
    }
$hashedpassword = password_hash($password, PASSWORD_DEFAULT);
mysqli_stmt_bind_param($stmt, "sssss", $first, $last, $adress, $login, $password, $has);
mysqli_stmt_execute($stmt);
mysql_stmt_close($stmt);
header("location: ../signup.php?error=none");

}
