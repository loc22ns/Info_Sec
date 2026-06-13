<?php
$name = $_POST['name'];$mail = $_POST['mail'];$pass = $_POST['pass'];
include "../modules/classDB.php";
    $class->Logup($name,$pass,$mail);
    echo"ổn";
