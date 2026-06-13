<?php 
include "../modules/connection.php";
$id = $_GET['idCart'];
// $conn = new mysqli("Localhost","root","","cs2");
$conn->query("DELETE FROM cart WHERE idCart = $id");
header("Location:/giohang.php");