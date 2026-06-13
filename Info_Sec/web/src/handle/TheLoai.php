<?php 
require_once "modules/connection.php";
$id_the_loai = $_GET['Thể loại'];
$conn->query("SELECT * FROM type_book WHERE ID = $id_the_loai");
header("Location:/sanpham1.php");