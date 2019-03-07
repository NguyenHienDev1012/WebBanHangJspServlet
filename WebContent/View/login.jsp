<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Đăng nhập</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="FrontEnd/RegisterForm/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="FrontEnd/RegisterForm/css/style.css">
</head>
<body>

    <div class="main">

        <!-- Sing in  Form -->
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="FrontEnd/RegisterForm/images/signin-image.jpg" alt="sing up image"></figure>
                        <a href="RegisterController" class="signup-image-link" style="color: blue;">Đăng ký</a>
                          <a href="HomeForward" class="signup-image-link" style="color: blue;">Trang chủ</a>
                    </div>

                    <div class="signin-form">
                     <h1 style="color: red"><%=request.getAttribute("msg")!=null?request.getAttribute("msg"):" " %></h1>
                    
                        <h2 class="form-title">Đăng nhập</h2>
                        <form  class="register-form" id="login-form" action="LoginController"  method="post">
                            <div class="form-group">
                                <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="your_name" id="your_name" placeholder="Your Name"/>
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="your_pass" id="your_pass" placeholder="Password"/>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signin" id="signin" class="form-submit" value="Log in"/>
                            </div>
                        </form>
                        <br><br><br>
                        <a href="ForGotPassController" style="color: red;">Forgot Password?</a>
                    </div>
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script src="FrontEnd/RegisterForm/vendor/jquery/jquery.min.js"></script>
    <script src="FrontEnd/RegisterForm/js/main.js"></script>
</body>
</html>