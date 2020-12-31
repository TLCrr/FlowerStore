<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zxx">

<head>
    <title>注册用户</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content="Classic Register Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"
    />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Meta tag Keywords -->
    <!-- css files -->
    <link rel="stylesheet" href="css/style1.css" type="text/css" media="all" />
    <!-- Style-CSS -->
    <link rel="stylesheet" href="css/font-awesome.css">
    <!-- Font-Awesome-Icons-CSS -->
    <!-- //css files -->
    <!-- web-fonts -->
    <link href="//fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <!-- //web-fonts -->
</head>

<body>
<!--header-->
<h1>
    <span>添加用户</span>
    <!--//header-->
    <!-- content -->
    <div class="main-content-agile">
        <div class="sub-main-w3">
            <form action="UserServlet" method="post">
                <div class="form-style-agile">
                    <label>用户名</label>
                    <div class="pom-agile">
                        <input placeholder="请输入用户名" name="username" type="text" required="">
                    </div>
                </div>
                <div class="form-style-agile">
                    <label>密码</label>
                    <div class="pom-agile">
                        <input placeholder="请输入密码" name="password" type="password" id="password1" required="">
                    </div>
                </div>
                <div class="form-style-agile">
                    <label>确认密码</label>
                    <div class="pom-agile">
                        <input placeholder="请再一次输入密码" name="Confirm Password" type="password" id="password2" required="">
                    </div>
                </div>
                <div class="clear"></div>
                <div >
                    <input type="submit" value="添加" style="margin-left: 235px;width: 100px;height: 50px">
                </div>
            </form>
        </div>
    </div>
    <!-- //content -->


    <!-- password-script -->
    <script>
        window.onload = function () {
            document.getElementById("password1").onchange = validatePassword;
            document.getElementById("password2").onchange = validatePassword;
        }

        function validatePassword() {
            var pass2 = document.getElementById("password2").value;
            var pass1 = document.getElementById("password1").value;
            if (pass1 != pass2)
                document.getElementById("password2").setCustomValidity("Passwords Don't Match");
            else
                document.getElementById("password2").setCustomValidity('');
            //empty string means no validation error
        }
    </script>
    <!-- //password-script -->

</body>

</html>