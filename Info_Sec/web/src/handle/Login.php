<?php
include "../modules/classDB.php";

$flag = $class->Login($_POST["UserName"], $_POST["Pass"]);
$flag2 = $class->LoginAdmin($_POST["UserName"], $_POST["Pass"]);
if ($flag== -1 && $flag2 ==-1) { 
    header("Location:/index.php");
} 
if($flag!= -1 && $flag2 ==-1){
    setcookie("User",$_POST["UserName"], time() + (60*60*60*5), "/");//5phuts hết hạn
    setcookie("idUser",$flag['IDuser'], time() + (60*60*60*5), "/");
    header("Location:/index.php");
}
else{
    header("Location:/admin.php");
}
