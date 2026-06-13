<?php 
include '../modules/classDB.php';
$iduser = $_POST['iduser'];
$idbook = $_POST['idbook'];
$amount = $_POST['amount'];

    $num = $class->addCart($iduser,$idbook,$amount);

if ($num === 1) {
    header('Location:/giohang.php');
}

