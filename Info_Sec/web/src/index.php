<?php include "modules/classDB.php"; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GLOWBOOK-website bán sách</title>
    <!-- CSS-link -->
    

    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jost:wght@100;200;300;400;500;600;700&display=swap" rel="stylesheet">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="css/style2.css">
<link rel="stylesheet"
  href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>
<body>
<style>
    #banner{
        background-image :url("assets/bg1.png");
        margin-top:80px;
        }
</style>
    <?php include "header.php"?>
    <div id="banner">
        <div class="box-left">
           
            <h2>NHÀ SÁCH GLOWBOOK</h2>
            <p>Không có người bạn nào trung thành như một cuốn sách.Hãy để GLOWBOOK mang đến cho bạn một người bạn nhé!!!</p>
            <button>Mua ngay</button>       
        </div>
        <div class="to-bottom">
            <a href="">
                <img src="assets/to_bottom.png" alt="">
            </a>
        </div>
    </div>
     <!-- ------------- featured categorries ---------------- -->
     <div class="categories">
        <div class="small-container text-center">
            <h2 class="title">New Products</h2>
            <div class="row">
                <?php for ($i= 0; $i < count($newest); $i++) { ?>
                <div class="col-3 book">
                <div class="card " style="width: 18rem;">
                    <img src="assets/<?php echo $newest[$i]->img?>" class="card-img-top" alt="..."style="width: 100%;height: 80%;">
                    <div class="card-body">
                        <h4 class="card-title"><strong><?php echo $newest[$i]->name ?></strong></h4>
                        <!-- <p class="card-text shortInfo"><?php echo $newest[$i]->detail ?></p> -->
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <p>Giá: <span class="gia"><?php echo $newest[$i]->price?></span>  VND</p>
                        <a href="chitietsp1.php?id=<?php echo $newest[$i]->id?>" class="btn btn-primary">Xem thêm</a>
                    </div>
                </div>
                </div>
                <?php } ?>

            </div>
            <div id="pagination-container"></div>
        </div>
        <script>
            $('.card').each(function() {
                var content = $(this).find('.shortInfo');
                var text = content.text();
                if (text.length > 100) {
                    content.text(text.substring(0, 150) + '...');
                }
            });
            
        </script>
    </div>
    <!-- ------------- featured products ---------------- -->
    <div class="small-container">
        <h2 class="title">Hot sales</h2>
        <div class="row">
            <?php for ($i=0; $i < 4 ; $i++) {?> 
                <div class="col-4">
                <a href="chitietsp1.php?id=<?php echo $hotsale[$i][0]->id?>"><img class="img" src="assets/<?php echo $hotsale[$i][0]->img?>"></a>
                <a href="chitietsp1.php?id=<?php echo $hotsale[$i][0]->id?>"><h4><?php echo $hotsale[$i][0]->name?></h4></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                </div>
                <p>Giá: <Span class="gia"> <?php echo $hotsale[$i][0]->price?> </Span>VND</p>
                <p>Lượt mua: <?php echo $hotsale[$i][1]?></p>
                <a href="chitietsp1.php?id=<?php echo $hotsale[$i][0]->id?>" class="btn btn-primary">Xem thêm</a>
            </div>
            <?php }?>
            
        </div>
        <h2 class="title">Hot trend</h2>
        <div class="row">
            <?php for ($i=0; $i < 8 ; $i++) {?> 
                <div class="col-4">
                    <a href="chitietsp1.php?id=<?php echo $someBooks[$i]->id?>"><img class="img" src="assets/<?php echo $someBooks[$i]->img?>"></a>
                    <a href="chitietsp1.php?id=<?php echo $someBooks[$i]->id?>"><h4><?php echo $someBooks[$i]->name?></h4></a>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
                    <p>Giá: <span class="gia"><?php echo $someBooks[$i]->price?></span>  VND</p>
                    <a href="chitietsp1.php?id=<?php echo $someBooks[$i]->id?>" class="btn btn-primary">Xem thêm</a>
                </div>
            <?php }?>
        </div>
    <!-- ------------ offer -------------- -->
      <!-- <div class="offer">
        <div class="small-container">
            <div class="row">
                <div class="col-2"><img src="images/exclusive.png" class="offer-img"></div>
                <div class="col-2">
                    <p style="font-family: 'Poppins';font-style: normal;font-weight: 600;font-size: 18px;line-height: 20px; color: rgb(4, 228, 93);margin-bottom: 40px;">categories</p>
                    <h2 style="font-family: 'Poppins'; font-style: normal;font-weight: 600;font-size: 48px;line-height: 60px; letter-spacing: 0.04em;color: aliceblue;">Enhance Your Music Experience</h2>  
                    <a href="" class="btn">Buy Now &#8594;</a>
                </div>
            </div>
        </div>
    </div> 
    </div>
         -->
    <div id="comment">
        <h2>NHẬN XÉT CỦA KHÁCH HÀNG</h2>
        <div id="comment-body">
            <div class="prev">
                <a href="#">
                    <img src="assets/prev.png" alt="">
                </a>
            </div>
            <ul id="list-comment">
                <li class="item">
                    <div class="avatar">
                        <img src="assets/avatar_1.png" alt="">

                    </div>
                    <div class="stars">
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                    </div>
                    <div class="name">Nguyễn Đình Vũ</div>

                    <div class="text">
                        <p>Mình mong bạn có thể đọc được cuốn sách này. Từng mẩu chuyện tại trường Tomoe sẽ khiến bạn như được tưới mát tâm hồn trở về thời thơ bé và mong muốn được học tại ngôi trường kì diệu này.</p>
                    </div>
                </li>
                <li class="item">
                    <div class="avatar">
                        <img src="assets/avatar_1.png" alt="">

                    </div>
                    <div class="stars">
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                    </div>
                    <div class="name">Trần Ngọc Sơn</div>

                    <div class="text">
                        <p>Đọc cuốn sách, có lẽ bạn cũng như tôi thôi, không thể nào kiềm được những run rẩy của trái tim mà khóc, khóc rất nhiều, vì đồng cảm với Aya, vì cảm phục nghị lực, quyết tâm phi thường của Aya, và thầm cảm ơn Aya vì đã giúp ta thêm trân quý từng giây từng phút quý giá của cuộc đời.</p>
                    </div>
                </li>
                <li class="item">
                    <div class="avatar">
                        <img src="assets/avatar_1.png" alt="">

                    </div>
                    <div class="stars">
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                        <span>
                            <img src="assets/star.png" alt="">
                        </span>
                    </div>
                    <div class="name">Nguyễn Trần Vi</div>

                    <div class="text">
                        <p>Khi biết tới cuốn " Bước chậm lại giữa thế gian vội vã " này khi ra mắt là một trong những cuốn sách bán chạy nhất của Hàn Quốc thì mình đã mua về để đọc .Cuốn sách như nhắc nhở chúng ta về lối sống của mình trong cái xã hội hiện nay chúng ta sống quá bon chen vội vã quên đi những điều nhỏ nhặt bình yên trong cuộc sống .Khi đó ta mất đi những niềm vui nhỏ bé giản dị mà làm cho bản thân cảm thấy không hạnh phúc</p>
                    </div>
                </li>
            </ul>
            <div class="next">
                <a href="#">
                    <img src="assets/next.png" alt="">
                </a>
            </div>
        </div>
    </div>
</div>
<script>
var a = $('.gia')   
var gia =  $('.gia').text()
for(let i = 0;  i < gia.length; i++) {
    a[i].text(new Intl.NumberFormat('en-IN').format(gia[i],))
}

</script>
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
                <p>Sách khoa học</p>
                <p>Sách kinh dị</p>
                <p>Sách khoa học</p>
                <p>Tiểu thuyết </p>
                <p>Tình cảm</p>
                <p>Truyện tranh</p>
                <p>Self help</p>
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
