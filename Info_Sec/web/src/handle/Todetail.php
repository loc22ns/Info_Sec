<?php 
include "modules/classDB.php";
//include "../modules/book.class.php";
$id = $_GET['id'];
$book = null;
for ($i=0; $i < sizeof($books) ; $i++) { 
    if($books[$i]->id === $id){
        $book = $books[$i];
        break;
    }
}
$img = $book->GetImg();
$relate = [];
for ($i=0; $i < sizeof($books) ; $i++) { 
    if($books[$i]->type === $book->type){
        $relate[] = $books[$i];
    }
}