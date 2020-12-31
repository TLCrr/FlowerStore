<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zxx">

<head>
    <title>修改花朵信息</title>
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
    <span>修改鲜花信息</span>
    <!--//header-->
    <!-- content -->
    <div class="main-content-agile">
        <div class="sub-main-w3">
            <form action="FlowerServlet?method=modify" method="post">
                <div class="form-style-agile">
                    <label>要修改的鲜花名</label>
                    <div class="pom-agile">
                        <input placeholder="请输入" name="flower_name" type="text" required="">
                    </div>
                </div>
                <div class="form-style-agile">
                    <label>价格</label>
                    <div class="pom-agile">
                        <input placeholder="请输入修改的价格" name="flower_price" type="text" id="flower_price" required="">
                    </div>
                </div>
                <div class="form-style-agile">
                    <label>日期</label>
                    <div class="pom-agile">
                        <input placeholder="请输入修改日期" name="flower_date" type="text" id="flower_date" required="">
                    </div>
                </div>
                <div class="clear"></div>
                <div >
                    <input type="submit" value="确认修改" style="margin-left: 235px;width: 100px;height: 50px">
                </div>
            </form>
        </div>
    </div>
    <!-- //content -->


</body>

</html>