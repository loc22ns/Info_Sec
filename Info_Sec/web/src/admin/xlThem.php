<?php 
$book = $_POST['book'];
$writer = $_POST['writer'];
$price = $_POST['price'];
$type = $_POST['type'];
//$img = $_FILES['img']['tmp_name'];
$detail = $_POST['detail'].'<br>';


$file_name = $_FILES['img']['name'];
$file_tmp = $_FILES['img']['tmp_name'];
$file_extension = pathinfo($file_name, PATHINFO_EXTENSION);
$new_file_name = date('YmdHis') . '.' . $file_extension;
move_uploaded_file($file_tmp, "../assets/".$new_file_name);

$conn = new mysqli("localhost","root","","cs2",3306);
if ($conn->connect_error) {
    die("Error : ". $conn->connect_error);
}
$arr = [] ;
$i = "INSERT INTO books (Bookname, Writer, Price, Detail, Type, img_src)VALUES ('$book', '$writer', $price, '$detail',$type,' $new_file_name' );";

$conn->query($i);
$conn->query("INSERT INTO soldamount (idBook) SELECT idBook FROM books ORDER BY idBook DESC LIMIT 1;");
header('Location: ./admin.php');
 




