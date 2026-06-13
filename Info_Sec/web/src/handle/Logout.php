<?php
if (isset($_COOKIE['User'])) {
    unset($_COOKIE['User']);
    unset($_COOKIE['idUser']);
    setcookie('User', '', time() - 3600, '/'); // cho giá trị rỗng và làm mới thời gian
    setcookie('idUser', '', time() - 3600, '/'); // cho giá trị rỗng và làm mới thời gian

}
header("Location:/index.php");