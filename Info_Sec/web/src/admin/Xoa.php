<?php 
$id = $_GET['id'];
$conn = new mysqli("localhost","root","","cs2",3306);
if ($conn->connect_error) {
    die("Error : ". $conn->connect_error);
}
$arr = [] ;
$i = "DELETE FROM books WHERE idBook = $id";

$conn->query($i);
header('Location: ./admin.php');
 