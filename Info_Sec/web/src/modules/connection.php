<?php
$conn = new mysqli("mysql", "root", "linh", "bookshop", 3306);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
// echo "Connected successfully";
?>
