<?php 
include "../modules/connection.php";
$id = $_POST['idCart'];
$amount = $_POST['Amount'];
// $conn = new mysqli("Localhost","root","","cs2");
$conn->query("UPDATE cart SET Amount = $amount  WHERE idCart = $id;");
echo"good!?!?";
