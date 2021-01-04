<%--
  Created by IntelliJ IDEA.
  User: Maibenben
  Date: 2020/12/28
  Time: 9:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>在线预定</title>

    <link rel="stylesheet" href="css/amazeui.min.css">
    <link rel="stylesheet" href="css/admin.css">
    <link rel="stylesheet" href="css/app.css">


    <style>
        .admin-main {
            padding-top: 0px;
        }
    </style>
</head>

<body>

<div class="am-cf admin-main">
    <!-- content start -->
    <h1 style="text-align:center">添加鲜花</h1>
    <div class="admin-content">
        <div class="admin-content-body">
            <div class="am-g">
                <form class="am-form am-form-horizontal" action="FlowerServlet" method="post"  style="padding-top: 30px;">
                    <input value="504" name="roleId" type="hidden">
                    <div class="am-form-group">
                        <label for="user-name" class="am-u-sm-3 am-form-label">
                            上传花朵图片
                        </label>
                        <input type="file" name="fileupload" >
<%--                        <div class="am-u-sm-9">--%>
<%--                            <input id="roleName4" required="" placeholder="请输入手机号" value="" name="flower_picture" type="text">--%>
<%--                        </div>--%>
                    </div>
                    <div class="am-form-group">
                        <label for="user-name" class="am-u-sm-3 am-form-label">
                            鲜花名称
                        </label>
                        <div class="am-u-sm-9">
                            <input id="roleName3" required="" placeholder="请输入鲜花名称"  name="flower_name" type="text">
                        </div>
                    </div>
                    <div class="am-form-group">
                        <label for="user-name" class="am-u-sm-3 am-form-label">
                            鲜花单价
                        </label>
                        <div class="am-u-sm-9">
                            <input id="roleName2" required="" placeholder="请输入鲜花单价"  name="flower_price" type="text">
                        </div>
                    </div>
                    <div class="am-form-group">
                        <label for="user-name" class="am-u-sm-3 am-form-label">
                            鲜花上货日期
                        </label>
                        <div class="am-u-sm-9">
                            <input id="roleName1" required="" placeholder="请输入鲜花上货日期"  name="flower_date" type="text">
                        </div>
                    </div>
                    <div>
                        <input type="submit" value="确定" style="margin-left: 840px;width: 50px;height: 30px;">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>

</html>
