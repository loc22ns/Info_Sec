<?php
include("../modules/classDB.php");
include("../modules/user.class.php");
include("../modules/connection.php");
$user = new user($_COOKIE['idUser'],$_COOKIE['User']);
$cart = $user->GetCart() ;
$idBook = [];
$amount = [];
foreach($cart as $gh){
    $idBook[] = $gh["idBook"] ;
    $amount[] = $gh["Amount"] ;
}
global $conn;
if ($conn->connect_error) {
    die("Error : ". $conn->connect_error);
}

$idu = $_COOKIE['idUser'];
// Sử dụng CURDATE() để lấy ngày hiện tại
$into = "INSERT INTO chung(userid, date) VALUES($idu, CURDATE())";
$conn->query($into);
$demo = '';

$ido = $class->getOrderId($idu);
for ($i=0; $i <sizeof($idBook) ; $i++) { 
    $demo .= ",($ido,$idBook[$i],$amount[$i])";
}
$values = substr($demo,1,strlen($demo));
//echo $values;
$chitiet = "INSERT INTO chitiet(ido,idbook,amount) VALUES $values";
$conn->query($chitiet);
//echo $chitiet;
for ($i=0; $i < sizeof($idBook); $i++) { 
    $sql = "UPDATE soldamount SET SoldAmount = SoldAmount+ $amount[$i] WHERE idBook=$idBook[$i]";;
    $conn->query($sql);
}
$dele = "DELETE FROM cart WHERE idUser=$idu";
$conn->query($dele);
 
header("Location:/thanhCong.html");


