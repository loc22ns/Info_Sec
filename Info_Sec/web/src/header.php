<header>
        <a href="#" class="logo"><img src="assets/logo1.png" alt=""></a>

        <ul class="navmenu">
            <li><a href="index.php">TRANG CHỦ</a></li>
            <li><a href="spham1.php">SẢN PHẨM</a></li>
            <li><a href="gioithieu.php">GIỚI THIỆU</a></li>
            <li><a href="giohang.php">GIỎ HÀNG</a></li>
            <?php if(count($_COOKIE) > 0 && isset($_COOKIE["User"])){?>
            <li><a href="handle/Logout.php"><?php echo $_COOKIE["User"];?></a></li>
            <?php } else{?>
            <li><a href="dnhap.php">ĐĂNG NHẬP</a></li><?php } ?>
            <li><a href="lienhe.php">LIÊN HỆ</a></li>
            
        </ul>

        <div class="nav-icon">
            <form style="display: flex;" method="post" action="spham2.php">
                <input type="text" name = "search"  required />
                <button type="submit" style="background-color: transparent;border:none">
                <i class='bx bx-search'></i>
                </button>
            </form>
            
            
            <a href="#"><i class='bx bx-user' ></i></a>
            <a href="giohang.php"><i class='bx bx-cart' ></i></a>

            <div class="bx bx-menu" id="menu-icon"></div>
        </div>
    </header>