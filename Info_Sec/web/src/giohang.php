<?php include("modules/user.class.php") ;
$user = new user($_COOKIE['idUser'],$_COOKIE['User']);
$cart = $user->GetCart() ;

?>
<!DOCTYPE html>
<html lang="en">
<!--divinectorweb.com-->
<head>
    <meta charset="UTF-8">
    <title>GLOWBOOL- website bán sách</title>
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/giohang.css" rel="stylesheet">
	<link href="css/style2.css" rel="stylesheet">
	
<link rel="stylesheet"
  href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Jost:wght@100;200;300;400;500;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<!-- <script src="script.js"></script> -->
</head>
<style>a{
	text-decoration: none;
}</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<body>
<?php include "header.php" ?>

    <div class="wrapper"style="margin-top:100px">
		<h1>Shopping Cart</h1>
		<div class="project">
			<div class="shop">
				<?php
				if($cart ==-1)	{
				echo "<h1>Giỏ hàng của bạn đang trống</h1>";?>
				<script>
					setTimeout(function() {
					window.location.href = "./index.php"; // Thay thế URL bằng đường dẫn tới trang bạn muốn chuyển đến
					}, 5000);
				</script>
				<?php }else{ for ($i = 0; $i < sizeof($cart); $i++) { ?>
				<div class="box">
					<img src="assets/<?php echo $cart[$i]['img_src'] ?>">
					<div class="content">
						<h3><?php echo $cart[$i]['Bookname'] ?></h3>
						<h4>Giá: <span class="gia"><?php echo $cart[$i]['Price'] ?></span>VND</h4>
						<!-- <p class="unit">Số lượng: <input name="" value="2"> </p> -->
						<p class="unit">Số lượng: <input class="num" type="number" value="<?php echo $cart[$i]['Amount'] ?>" min="1">
						<input class="idCart" type="hidden" value="<?php echo $cart[$i]['idCart'] ?>"></p>
						<a href="handle/removeFromCart.php?idCart=<?php echo $cart[$i]['idCart'] ?>" class="btn-area"><i aria-hidden="true" class="fa fa-trash"></i> <span class="btn2">Remove</span></a>
					</div>
				</div><?php }} ?>
				<script>
					console.log("dcm");
					$(document).ready(function() {
						var sum = 0;
						var a = document.querySelectorAll('.gia')
						var b = document.querySelectorAll('.num')
						for (let i = 0; i < a.length; i++) {
							console.log($(b[i]).val());
							sum += parseInt($(a[i]).text())*parseInt($(b[i]).val());
						} $('#tongCong').text(new Intl.NumberFormat('en-IN').format(sum,))
						$('#thue').text(new Intl.NumberFormat('en-IN').format(sum*0.05,))
						$('#tog').text(new Intl.NumberFormat('en-IN').format(sum*1.05,))
						console.log(new Intl.NumberFormat('ja-JP', { style: 'currency', currency: 'VND' }).format(sum,),);
						
					$('.unit').on('change', function() {
						var val = $(this).find('.num').val()
						$.ajax({
							url: "handle/udCart.php",
							type: "post",
							data: {
								Amount: val,
								idCart: $(this).find(".idCart").val()
							} ,
							success: function (response) {
								alert(response);
								$('.unit').on('change', function() {
								var a = document.querySelectorAll('.gia')
								var b = document.querySelectorAll('.num')
								for (let i = 0; i < a.length; i++) {
									sum += parseInt($(a[i]).text())*parseInt($(b[i]).val());
								}  $('#tongCong').text(new Intl.NumberFormat('en-IN').format(sum,))
						$('#thue').text(new Intl.NumberFormat('en-IN').format(sum*0.05,))
						$('#tog').text(new Intl.NumberFormat('en-IN').format(sum*1.05,))
								})
							},
							error: function(jqXHR, textStatus, errorThrown) {
							console.log(textStatus, errorThrown);
							}
    					})
						
					})
					})
					
				</script>
			</div>
			<div class="right-bar">
				<p><span>Tổng phí</span> <span id="tongCong">244.000</span>VND</p>
				<hr>
				<p><span>Phí thuế (5%)</span> <span id="thue">12.200</span>VND</p>
				<hr>
				<p><span>Tổng cộng</span> <span id="tog">271.200VND</span>VND</p>
				<a href="handle/Check.php">
					<i class="fa fa-shopping-cart"></i>Checkout
				</a>
			</div>
		</div>
	</div>
</body>
</html>