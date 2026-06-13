<?php

include "connection.php";

class Book {
    public $id;
    public $name;
    public $detail;
    public $witer; 
    public $price;
    public $type; 
    public $img;
public function __construct($id,$name,$detail,$price,$witer,$type,$img) {
    $this->id = $id;
    $this->name = $name;
    $this->detail = $detail;
    $this->price = $price;
    $this->witer = $witer;
    $this->type = $type;
    $this->img = $img;
}
public function GetSoldAmount(){
    global $conn;
        
        $select = "SELECT * FROM `soldamount` WHERE idBook = ".$this->id;
        $res = $conn->query($select);
        if($res->num_rows === 1 ){
            $row = $res->fetch_assoc();
            return $row['SoldAmount'];
        }
         
}
public function GetImg(){
    global $conn;
        
        $arr = [] ;
        $select = "SELECT * FROM image WHERE idBook = ".$this->id;
        $res = $conn->query($select);
        if($res->num_rows === 1 ){
            $row = $res->fetch_assoc();
            $arr = [$row['img'],$row['img1'],$row['img2']];
            // print_r($arr);
            return $arr;
        }
         
}

}