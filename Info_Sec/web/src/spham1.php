<?php include "modules/classDB.php";

if(!isset($_GET['iddm'])){
    $_GET['iddm'] = -1;
}
$arr = [];
for($i=0;$i<sizeof($books);$i++){
    if($books[$i]->type == $_GET['iddm']){
        $arr[] = $books[$i];
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GLOWBOOK-website bán sách</title>
    <!-- CSS-link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css" integrity="sha512-b2QcS5SsA8tZodcDtGRELiGv5SaKSk1vDHDaQRda0htPYWZ6046lr3kJ5bAAQdpV2mmA/4v0wQF9MyU6/pDIAg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.min.js" integrity="sha512-WW8/jxkELe2CAiE4LvQfwm1rajOS8PHasCCx+knHG0gBHt8EXxS6T6tJRTGuDQVnluuAvMxWF4j8SNFDKceLFg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="css/style2.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jost:wght@100;200;300;400;500;600;700&display=swap" rel="stylesheet">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<link rel="stylesheet"
  href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/simplePagination.js/1.6/jquery.simplePagination.min.js" integrity="sha512-9Dh726RTZVE1k5R1RNEzk1ex4AoRjxNMFKtZdcWaG2KUgjEmFYN3n17YLUrbHm47CRQB1mvVBHDFXrcnx/deDA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/simplePagination.js/1.6/simplePagination.min.css" integrity="sha512-m3x+GduGUoEMGB6dywpah/mAG3GafMmxmByGLqKfZFF8xr6THjjOcH0OWV1rLBFiZMotecZxWhRz0lVlVNl72w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>

     <?php include "header.php" ?>
    <section class="products">
		<h1 style="color: rgb(248, 8, 0);">Our Products</h1>
		<body style="background-color: rgb(255, 255, 255);">
			<!--  -->
			<div class="small-container">
		
    <div class="small-container">

        <div class="row">
            <h2 class="" style="color: rgb(248, 8, 0);">Tất cả các sản phẩm</h2>
            
            <style>
                /* Style The Dropdown Button */
                .dropbtn {
                background-color: #0eada5;
                color: white;
                padding: 16px;
                font-size: 16px;
                border: none;
                cursor: pointer;
                }

                /* The container <div> - needed to position the dropdown content */
                .dropdown {
                position: relative;
                display: inline-block;
                }

                /* Dropdown Content (Hidden by Default) */
                .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
                }

                /* Links inside the dropdown */
                .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
                }

                /* Change color of dropdown links on hover */
                .dropdown-content a:hover {background-color: #f1f1f1}

                /* Show the dropdown menu on hover */
                .dropdown:hover .dropdown-content {
                display: block;
                }

                /* Change the background color of the dropdown button when the dropdown content is shown */
                .dropdown:hover .dropbtn {
                background-color: #0eada5 rgba(0,0,0,0.2);
                }
            </style>
            
           
            <div class="dropdown" style="float: left;">
            <button class="dropbtn">Thể loại</button>
            <div class="dropdown-content">
            <a href="./spham1.php">Tất cả </a>
            <?php for($i  = 0 ; $i < sizeof($types); $i++){?>
                <a href="./spham1.php?iddm=<?php echo $types[$i][0];?>"><?php echo $types[$i][1];?></a>
            <?php }?>
            </div>
            </div>
        </div>

        <div class="row">
        <?php        
            $iddm = $_GET['iddm'];
            if($iddm == -1){
            for ($i=0; $i < sizeof($books) ; $i++) {?> 
            <div class="col-4 book " data-booktype="<?php echo $books[$i]->type?>">
                <a href="chitietsp1.php?id=<?php echo $books[$i]->id?>"><img class="img" src="assets/<?php echo $books[$i]->img?>"></a>
                <a href="chitietsp1.php?id=<?php echo $books[$i]->id?>"><h4><?php echo $books[$i]->name?></h4></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                </div>
                <p>Giá: <span class="gia"><?php echo $books[$i]->price?></span>  VND</p>
                <a href="chitietsp1.php?id=<?php echo $books[$i]->id?>" class="btn btn-primary">Xem thêm</a>
            </div>
        <?php }}
        else{
        for ($i=0; $i < sizeof($arr) ; $i++) { ?>
            <div class="col-4 book " data-booktype="<?php echo $books[$i]->type?>">
                <a href="chitietsp1.php?id=<?php echo $arr[$i]->id?>"><img class="img" src="assets/<?php echo $arr[$i]->img?>"></a>
                <a href="chitietsp1.php?id=<?php echo $arr[$i]->id?>"><h4><?php echo $arr[$i]->name?></h4></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                </div>
                <p>Giá: <span class = "gia"><?php echo $arr[$i]->price?></span>  VND</p>
                <a href="chitietsp1.php?id=<?php echo $arr[$i]->id?>" class="btn btn-primary">Xem thêm</a>
            </div>
        <?php }} ?>
        </div>
        <div id = "pagination"></div>
            <style>
                .simple-pagination ul {
                    margin: 0 0 20px;
                    padding: 0;
                    list-style: none;
                    text-align: center;
                }
    
                .simple-pagination li {
                    display: inline-block;
                    margin-right: 5px;
                }
    
                .simple-pagination li a,
                .simple-pagination li span {
                    color: #666;
                    padding: 8px 15px;
                    text-decoration: none;
                }
    
                .simple-pagination .current {
                    color: #FFF;
                    background-color: #3bffce;
                    border-color: #3bffce;
                }
    
                .simple-pagination .prev.current,
                .simple-pagination .next.current {
                    background:#3bffce;
                }
            </style>
            <script>
                $(document).ready(function(){
                    items = $('.book')
                    var numItems = items.length;
                    console.log(numItems);
                    var perPage = 8;
        
                    items.slice(perPage).hide();
        
                    $('#pagination').pagination({
                        items: numItems,
                        itemsOnPage: perPage,
                        prevText: "&laquo;",
                        nextText: "&raquo;",
                        onPageClick: function (pageNumber) {
                            var showFrom = perPage * (pageNumber - 1);
                            var showTo = showFrom + perPage;
                            items.hide().slice(showFrom, showTo).show();
                        }
                    });
                })
 
            </script>
    </div>
	</section>


    <section class="contact">
        <div class="contact-info">
            <div class="first-info">
                <img src="assets/logo1.png" alt="">

                <p>470 TRAN DAI NGHIA, <br> VKU Da Nang</p>
                <p>0942289157</p>
                <p>locdd.22ns@vku.udn.vn</p>

                <div class="social-icon">
                    <a href="#"><i class='bx bxl-facebook'></i></a>
                    <a href="#"><i class='bx bxl-twitter' ></i></a>
                    <a href="#"><i class='bx bxl-instagram' ></i></a>
                    <a href="#"><i class='bx bxl-youtube' ></i></a>
                    <a href="#"><i class='bx bxl-linkedin' ></i></a>
                </div>
            </div>

            <div class="second-info">
                <h4>TRỢ GIÚP</h4>
                <p>Chính sách đổi trả</p>
                <p>Điều khoản sử dụng</p>
                <p>Phương thức vận chuyển</p>
                <p>Hướng dẫn mua hàng</p>
                <p>Phương thức thanh toán</p>
            </div>

            <div class="third-info">
                <h4>SHOP</h4>
                <p>Sách thiếu nhi</p>
                <p>Tiểu sử-hồi kí</p>
                <p>Giáo khoa-tham khảo</p>
                <p>Sách ngoại ngữ</p>
                <p>Kĩ năng sống</p>
            </div>

            <div class="fourth-info">
                <h4>GLOWBOOK </h4>
                <P>Giới thiệu </P>
                <p>Blog</p>
                <p>Đăng nhập</p>
                <p>Liên hệ</p>
                <p>Dịch vụ</p>
            </div>

            <div class="five">
                <h4>Subscribe</h4>
                <p>Receive Updates, Hot Deals, Discounts Sent Straight In Your Inbox Daily</p>
                <p>Lorem Ipsum Dolor Sit Amet Consectetur Adipisicing Elit. Eum, Debitis.</p>
                <p>Receive Updates, Hot Deals, Discounts Sent Straight In Your Inbox Daily</p>
            </div>
        </div>
    </section>

    <div class="end-text">
        <p>Copyright © @2024. All Rights Reserved.Designd By DANG DUC LOC</p>
    </div>
<script src="script.js"></script>
</body>

</html>