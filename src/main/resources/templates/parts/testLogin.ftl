<#macro loginPage path isRegisterForm>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login V4</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
     <link rel="stylesheet" type="text/css" href="/static/vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/static/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/static/fonts/iconic/css/material-design-iconic-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/static/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/static/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/static/vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/static/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/static/vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/static/css/util.css">
    <link rel="stylesheet" type="text/css" href="/static/css/main.css">
    <!--===============================================================================================-->
</head>
<body>

<form action="${path}" method="post">
<div class="limiter">
    <div class="container-login100" style="background-image: url('/static/image/winter.jpg');">
        <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
            <form class="login100-form validate-form">
					<span class="login100-form-title p-b-49">
						Login
					</span>

                <div class="wrap-input100 validate-input m-b-23" data-validate = "Username is reauired">
                    <span class="label-input100">Username</span>
                    <input class="input100" type="text" name="username" placeholder="Type your username">
                    <span class="focus-input100" data-symbol="&#xf206;"></span>
                </div>

                <div class="wrap-input100 validate-input" data-validate="Password is required">
                    <span class="label-input100">Password</span>
                    <input class="input100" type="password" name="password" placeholder="Type your password">
                    <span class="focus-input100" data-symbol="&#xf190;"></span>
                </div>
                <#if isRegisterForm>
                       <div class="wrap-input100 validate-input m-b-23" data-validate = "Type password confirm is reauired">
                           <span class="label-input100">Password confirm</span>
                           <input class="input100" type="password" name="confirm-password" placeholder="Type confirm password">
                           <span class="focus-input100" data-symbol="&#xf206;"></span>
                       </div>
                   <div class="wrap-input100 validate-input m-b-23" data-validate = "Email is reauired">
                       <span class="label-input100">Email</span>
                       <input class="input100" type="email" name="email" placeholder="Type your email">
                       <span class="focus-input100" data-symbol="&#xf206;"></span>
                   </div>
                </#if>

                <div class="text-right p-t-8 p-b-31">
                    <a href="#">
                        Forgot password?
                    </a>
                </div>

                <div class="container-login100-form-btn">
                    <div class="wrap-login100-form-btn">
                        <div class="login100-form-bgbtn"></div>

                        <input type="hidden" name="_csrf" value="${_csrf.token}" />
                        <button class="login100-form-btn" type="submit">
                            Login
                        </button>
                        <input type="hidden" name="_csrf" value="${_csrf.token}" />

                    </div>
                </div>

                <div class="txt1 text-center p-t-54 p-b-20">
						<span>
							Or Sign Up Using
						</span>
                </div>

                <div class="flex-c-m">
                    <a href="#" class="login100-social-item bg1">
                        <i class="fa fa-facebook"></i>
                    </a>

                    <a href="#" class="login100-social-item bg2">
                        <i class="fa fa-twitter"></i>
                    </a>

                    <a href="#" class="login100-social-item bg3">
                        <i class="fa fa-google"></i>
                    </a>
                </div>

                <div class="flex-col-c p-t-155">
						<span class="txt1 p-b-17">
							Or Sign Up Using
						</span>
                    <#if !isRegisterForm><a class="txt2" href="/registration">Sign up</a></#if>
                </div>
            </form>
        </div>
    </div>
</div>

</form>
<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
<script src="/static/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="/static/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="/static/vendor/bootstrap/js/popper.js"></script>
<script src="/static/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="/static/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="/static/vendor/daterangepicker/moment.min.js"></script>
<script src="/static/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="/static/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
<script src="/static/js/js/main.js"></script>

</body>
</html>


</#macro>