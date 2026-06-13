<?php
include "book.class.php";
include "connection.php";
class classDB
{
    public function Login($username, $pass)
    {
        global $conn;
        $select = "SELECT * FROM user WHERE userName = '$username' AND pass = '$pass'";
        $result = $conn->query($select);
        if ($result->num_rows > 0) {
            return $result->fetch_assoc();
        } else {
            return -1;
        }
    }
    public function LoginAdmin($username, $pass)
    {
        global $conn;
        $select = "SELECT * FROM admin WHERE name = '$username' AND pass = '$pass'";
        $result = $conn->query($select);
        if ($result->num_rows > 0) {
            return $result->fetch_assoc();
        } else {
            return -1;
        }
    }
    public function Logup($username, $pass, $mail)
    {
        global $conn;
        $insert = "INSERT INTO user (userName,Pass,Mail) VALUES ('$username','$pass','$mail')";
        $conn->query($insert);
    }
    public function GetBook()
    {
        global $conn;
        $Select = "SELECT * FROM `books`";
        $rs = $conn->query($Select);
        $books = array();
        while ($row = $rs->fetch_assoc()) {
            $book = new Book($row['idBook'], $row['Bookname'], $row['Detail'], $row['Price'], $row['Writer'], $row['Type'], $row['img_src']);
            $books[] = $book;
        }
        return $books;
    }
    public function GetTag()
    {
        global $conn;
        // Run query
        $Select = "SELECT * FROM `type_book`";
        $rs = $conn->query($Select);

        // Check if the query was successful
        if (!$rs) {
            die("Query failed: " . $conn->error); // Output MySQL error
        }

        // Fetch and store results
        $type = array();
        while ($row = $rs->fetch_assoc()) {
            $type[] = [$row['ID'], $row['Type']];
        }

        return $type;
    }
    public function addCart($iduser, $idbook, $amount)
    {
        global $conn;
        $insert = "INSERT INTO cart (idUser,idBook,Amount)VALUES ($iduser,$idbook,$amount)";
        $rs = $conn->query($insert);
        if ($rs === true) {
            return 1;
        } else {
            return -1;
        }
    }
    public function getOrderId($iduser)
    {
        global $conn;
        $select = "SELECT * FROM chung WHERE userid = $iduser ORDER BY id DESC LIMIT 1;";
        $rs = $conn->query($select);
        $row = $rs->fetch_assoc();
        $id = $row['id'];
        return $id;
    }
    public function search($i)
    {
        global $conn;
        $search = "SELECT * FROM `books` WHERE Bookname LIKE '%$i%' OR Detail LIKE '%$i%'";
        $rs = $conn->query($search);
        $books = array();
        while ($row = $rs->fetch_assoc()) {
            $book = new Book($row['idBook'], $row['Bookname'], $row['Detail'], $row['Price'], $row['Writer'], $row['Type'], $row['img_src']);
            $books[] = $book;
        }
        // echo $search;
        return $books;
    }
}
$class = new classDB();
$books = $class->GetBook();
$types = $class->GetTag();
//$class->GetBookbyTag(1);
function randomArr($arr, $amount)
{
    $new = array_rand($arr, $amount);
    $newest = [];
    foreach ($new as $key) {
        $newest[] = $arr[$key];
    }
    return $newest;
}


$newest = randomArr($books, 6);
$someBooks = randomArr($books, 8);



$hotsale = [];
for ($i = 0; $i < sizeof($books); $i++) {
    $hotsale[] = [$books[$i], $books[$i]->GetSoldAmount()];
}
$col = array_column($hotsale, 1);
array_multisort($col, SORT_DESC, $hotsale);
//rsort($hotsale[1]);
//print_r($hotsale);