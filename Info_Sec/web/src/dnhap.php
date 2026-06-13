<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Website bán sách GLOWBOOK</title>
    <link rel="stylesheet" href="css/dnhap.css">  
    <link rel="stylesheet"
  href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
</head>
<body>
<h2>Sign in/up </h2>
    <div class="container" id="container">
        <div class="form-container sign-up-container">
            <form action="handle/Logup.php" method="post" >
                <h1>Create Account</h1>
                <div class="social-container">
                    <a href="#" class="social"><i class='bx bxl-facebook-circle'></i></a>
                    <a href="#" class="social"><i class='bx bxl-instagram-alt' ></i></a>
                    <a href="#" class="social"><i class='bx bxl-twitter' ></i></a>
                </div>
                <span>or use your email for registration</span>
                <input type="text" placeholder="Name" name="name"/>
                <input type="email" placeholder="Email" name="mail"/>
                <input type="password" placeholder="Password" name="pass"/>
                <button type="submit" value="Sign up">Sign Up</button>
                <!-- <a href="" class="btn">Sign up</a> -->
            </form>
        </div>
        <div class="form-container sign-in-container">
            <form action="handle/Login.php" method="post">
                <h1>Sign in</h1>
                <div class="social-container">
                    <a href="#" class="social"><i class='bx bxl-facebook-circle'></i></a>
                    <a href="#" class="social"><i class='bx bxl-instagram-alt' ></i></a>
                    <a href="#" class="social"><i class='bx bxl-twitter' ></i></a>
                </div>
                <span>or use your account</span>
                <input type="text" placeholder="User name" name="UserName" />
                <input type="password" placeholder="Password" name="Pass"/>
                <a href="#">Forgot your password?</a>
                <button>Sign In</button>
            </form>
        </div>
        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-panel overlay-left">
                    <h1>Welcome Back!</h1>
                    <p>To keep connected with us please login with your personal info</p>
                    <button class="ghost" id="signIn">Sign In</button>
                </div>
                <div class="overlay-panel overlay-right">
                    <h1>Hello, Friend!</h1>
                    <p>Enter your personal details and start journey with us</p>
                    <button class="ghost" id="signUp">Sign Up</button>
                </div>
            </div>
        </div>
    </div>
    <script src="dnhap.js"></script>
</body>
</html>
   