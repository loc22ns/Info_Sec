<?php 

require_once "connection.php";
final class user 
{
    public $id ;
    public $name ;
 
    public function __construct($id, $name) {
        $this->id = $id;
        $this->name = $name;
    }
    public function GetCart(){
        global $conn;
        
        $id = $this->id;
        $select = "SELECT idCart,idUser,cart.idBook,Amount,books.Bookname, books.Price, books.img_src FROM cart JOIN books ON cart.idBook = books.idBook WHERE idUser = $id";
        $result = $conn->query($select);
         
        if ($result->num_rows > 0) {
            $arr = [];
            while ($row = $result->fetch_assoc()) {
                $arr[] = $row;
            }
            return $arr;
        }
        else {
            return -1;
        }
    }
}
