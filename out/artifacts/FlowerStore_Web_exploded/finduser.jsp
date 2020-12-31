<%--
  Created by IntelliJ IDEA.
  User: Maibenben
  Date: 2020/12/26
  Time: 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title></title>

    <link rel="stylesheet" href="css/amazeui.min.css">
    <link rel="stylesheet" href="css/admin.css">
    <link rel="stylesheet" href="css/app.css">
</head>

<body>

<div class="am-cf admin-main" style="padding-top: 0px;">
    <!-- content start -->
    <div class="admin-content">
        <div class="admin-content-body">
            <div class="container">
                <div class="am-g">
                    <div class="am-u-sm-12 am-u-md-6">
                        <div class="am-btn-toolbar">
                            <div class="am-btn-group am-btn-group-xs">
                                <form action="findUserServlet" method="post">
                                    <input placeholder="请输入要查询的用户名" name="username" type="text" >
                                    <input type="submit" value="查询">
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="am-u-sm-12 am-u-md-3">
                        <div class="am-input-group am-input-group-sm">
                        </div>
                    </div>
                </div>
                <div class="am-g" style="margin-top: -30px;">
                    <div class="am-u-sm-12">
                            <table class="am-table am-table-striped am-table-hover table-main">
                                <thead>
                                <tr>
                                    <th>
                                        用户名
                                    </th>
                                    <th>
                                        密码
                                    </th>
                                </tr>
                                </thead>
                                <tbody id="tUser">
                                    <tr>
                                        <td>${userDetail.username}</td>
                                        <td>${userDetail.password}</td>
                                    </tr>
                                </tbody>
                            </table>
                    </div>
                    <!-- content end -->
                </div>
            </div>
        </div>
    </div>
</div>
<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="js/jquery-1.11.3.min.js"></script>
<!--<![endif]-->
<script type="text/javascript" src="myplugs/js/plugs.js"></script>
</body>

</html>
