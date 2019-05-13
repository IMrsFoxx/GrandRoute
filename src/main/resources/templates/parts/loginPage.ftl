<#macro loginPage path isRegisterForm>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login V4</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
     <link rel="stylesheet" type="text/css" href="/static/loginpage/vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/static/loginpage/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/static/loginpage/fonts/iconic/css/material-design-iconic-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/static/loginpage/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/static/loginpage/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/static/loginpage/vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/static/loginpage/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/static/loginpage/vendor/daterangepicker/daterangepicker.css">
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
						<#if isRegisterForm>Registration <#else>Login</#if>
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
                <div class="container-login100-form-btn">
                    <div class="wrap-login100-form-btn">
                        <div class="login100-form-bgbtn"></div>

                        <input type="hidden" name="_csrf" value="${_csrf.token}" />
                        <button class="login100-form-btn" type="submit">
                            <#if isRegisterForm>Sign up<#else>Login</#if>
                        </button>
                        <input type="hidden" name="_csrf" value="${_csrf.token}" />

                    </div>
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
<script src="/static/loginpage/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="/static/loginpage/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="/static/loginpage/vendor/bootstrap/js/popper.js"></script>
<script src="/static/loginpage/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="/static/loginpage/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="/static/loginpage/vendor/daterangepicker/moment.min.js"></script>
<script src="/static/loginpage/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="/static/loginpage/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
<script src="/static/loginpage/js/main.js"></script>

</body>
</html>
</#macro>

<#macro logout>
      <form action="/logout" method="post">
         <input type="hidden" name="_csrf" value="${_csrf.token}"/>
         <button type="submit" id="fonty"  class="btn btn-oval">
             <#if user??> Sign out <#else> Log in</#if>
         </button>
     </form>
 </#macro>