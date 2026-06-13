<?php 
session_start();
include "handle/Todetail.php"?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GLOWBOOK-website bán sách</title>
    <!-- CSS-link -->
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
   
    <div class="small-container single-product">
        <div class="row">
            <div class="col-2">
                <img src="assets/<?php echo $book->img?>" width="100%" id="productImg">
                
                <div class="small-img-row">
                    <div class="small-img-rol">
                        <img src="assets/<?php echo $book->img?>" width="100%" class="small-img">
                    </div>
                    <?php if(! $img){?>
                    <div class="small-img-rol">
                        <img src="https://i.pinimg.com/736x/17/24/51/172451f0e2abb8ed44ee51abe76ddc6e.jpg" width="100%" class="small-img">
                    </div>
                    <div class="small-img-rol">
                        <img src="https://i.pinimg.com/originals/c7/77/2c/c7772c217dbc7cf6e6ea5fa37e5fb382.png" width="100%" class="small-img">
                    </div>
                    <div class="small-img-rol">
                        <img src="https://i.pinimg.com/originals/c7/77/2c/c7772c217dbc7cf6e6ea5fa37e5fb382.png" width="100%" class="small-img">
                    </div>
                    <?php }else{ for($i = 0 ; $i<3; $i++){?>
                        
                        <div class="small-img-rol">
                            <img src="assets/<?=$img[$i]?>" width="100%" class="small-img">
                        </div>
                    <?php } }?>
                </div>

            </div>
            <form class="col-2" method="post" action="handle/addCart.php">
                <h1><?php echo $book->name?></h1>
                <h4><?php echo $book->price?>VND</h4>
                    <input type="hidden" name="idbook" value="<?php echo $book->id?>">
                    <input type="hidden" name="iduser" value="<?php echo $_COOKIE['idUser']?>">
                    <label for="amount"> Số Lượng</label><br>
                    <input id="amount" type="number" name="amount" value="1">
                    <button type="submit" href="" class="btn">Thêm vào giỏ hàng </button>
                    <h3>Product Detail
                        <i class="fa fa-indent"></i>
                    </h3>
                    <br>
                    <p id="detail"><?php echo $book->detail?></p>
                    <p style="cursor: pointer;color:grey" id="view" >Xem thêm</p>
            </form>
        </div>
    </div>
    <script>
        var detail = $("#detail").text()
        if(detail.length > 100){
            var shorten = detail.substring(0,250)
            $("#detail").text(shorten+ "...")
        }
        $('#view').click(function(){
            if($('#view').text()==="Xem thêm"){
                $("#detail").text(detail)
                $(this).text("Ẩn bớt")
            }
            else {
                var shorten = detail.substring(0,250)
                $("#detail").text(shorten+ "...")
                $(this).text("Xem thêm");
            }
            
        })
    </script>
    <!-- <pre><?php print_r($relate)?></pre> -->

    <!-- ----- title------------- -->
    <div class="small-container">
        <div class="row row2">
            <h2>Relate Products</h2>
        </div>
    </div>

<!-- ---------------Products----------------- -->
    <div class="small-container">
        <div class="row">
        <?php for ($i=0; $i < sizeof($relate) ; $i++) { ?>
            <div class="col-4 relate">
                <img src="assets/<?php echo $relate[$i]->img?>">
                <h4><?php echo $relate[$i]->name?></h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>
                </div>
                <p>Giá: <?php echo $relate[$i]->price?> VND</p>
                
                <a href="chitietsp1.php?id=<?php echo $relate[$i]->id?>" class="btn btn-primary">Xem thêm</a>
            </div>
        <?php }?>
        </div>
        <div id = "pagination">
            
        </div>
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
            var items = $(".relate");
            var numItems = items.length;
            var perPage = 4;

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
            // $('#pagination').removeClass("light-theme")
            // $('#pagination').removeClass("simple-pagination")
            // $('#pagination').addClass("page-btn")
            // $('#pagination ul').addClass("page-btn")

        </script>
    </div>
    <!-- ------------footer----------- -->

     
        <!-- ------------------- js for toggle menu-------------- -->
        <script>
            var MenuItems = document.getElementById("MenuItems");

            MenuItems.style.maxHeight = "0px";

            function menutoggle() {
                if (MenuItems.style.maxHeight == "0px") {
                    MenuItems.style.maxHeight = "200px";
                }
                else {
                    MenuItems.style.maxHeight = "0px";
                }
            }

        </script>

<!-- ------------------- JS for  product gallery------------------------         -->
        <script>
            var ProductImg = document.getElementById("productImg");
            var SmallImg = document.getElementsByClassName("small-img");

            SmallImg[0].onclick = function()
            {
                ProductImg.src = SmallImg[0].src;
            }
            SmallImg[1].onclick = function()
            {
                ProductImg.src = SmallImg[1].src;
            }
            SmallImg[2].onclick = function()
            {
                ProductImg.src = SmallImg[2].src;
            }
            SmallImg[3].onclick = function()
            {
                ProductImg.src = SmallImg[3].src;
            }

        </script>
</body>

<!-- </html> -->

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
