<%--
  Created by IntelliJ IDEA.
  User: Maibenben
  Date: 2019/12/13
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
                               <h3>我的购物车</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="am-g" style="margin-top: -30px;">
                    <div class="am-u-sm-12">
                        <form class="am-form" action="user/delAll.action">
                            <table class="am-table am-table-striped am-table-hover table-main">
                                <thead>
                                <tr>
                                    <th>
                                        花名
                                    </th>
                                    <th>
                                        单价
                                    </th>
                                    <th>
                                        操作
                                    </th>
                                </tr>
                                </thead>
                                <tbody id="tUser">
                                <c:forEach items="${sessionScope.cartList}" var="u">
                                    <tr>
                                        <td>${u.flower_name}</td>
                                        <td>${u.flower_price}</td>
                                        <td>
                                            <a href="DeleteShopping_cartServlet?method=deleteshopping_cart&shoping_id=${u.shoping_id}&username=${sessionScope.SESSION_user.username}">删除</a>
                                            </td>
<%--                                        <td><a href="OrderServlet?order_id=1&amp;method=delete">删除</a></td>--%>
                                    </tr>
                                </c:forEach>
                                <tr>
                                    总消费:${sessionScope.sum}
                                </tr>
                                </tbody>

                            </table>
                        </form>
                        <a href="reserve1.jsp">预定</a>
                </div>
                    <!-- content end -->
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
