<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zxx">

<head>
    <title>修改密码</title>
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
    <span>修改密码</span>
    <!--//header-->
    <!-- content -->
    <div class="main-content-agile">
        <div class="sub-main-w3">
            <form action="change_passwordServlet" method="post">
                <div class="form-style-agile">
                    <label>原密码</label>
                    <div class="pom-agile">
                        <input placeholder="请输入原来的密码" name="password1" type="text" required="">
                    </div>
                </div>
                <div class="form-style-agile">
                    <label>新密码</label>
                    <div class="pom-agile">
                        <input placeholder="请输入新密码" name="password" type="text" id="password1" required="">
                    </div>
                </div>
                <div class="form-style-agile">
                    <label>确认新密码</label>
                    <div class="pom-agile">
                        <input placeholder="请再一次输入密码" name="Confirm Password" type="text" id="password2" required="">
                    </div>
                </div>
                <div class="clear"></div>
                <input style="margin: 0 auto;" type="submit" value="确认修改">
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
                document.getElementById("password2").setCustomValidity("Passwords Don't Match");//使用 setCustomValidity 设置了自定义提示后，validity.customError 就会变成true，则 checkValidity() 总是会返回false，导致无论重新输入的格式正确与否，都会提示设置好的错误信息。
            else
            { document.getElementById("password2").setCustomValidity('');
             //   alert("修改成功");//在页面上弹出
                //empty string means no validation error
    }
        }
    </script>
    <!-- //password-script -->

</body>

</html>