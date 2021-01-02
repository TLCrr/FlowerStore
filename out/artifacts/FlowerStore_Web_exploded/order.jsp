<%--
  Created by IntelliJ IDEA.
  User: Maibenben
  Date: 2020/20/27
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
<%--                            <div class="am-btn-group am-btn-group-xs" style="border:3px #0a628f solid;height: 30px; width: 50px;">--%>
<%--                                <a href="reserve.jsp">增加</a>--%>
<%--                            </div>--%>
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
                                        订单号
                                    </th>
                                    <th>
                                        姓名
                                    </th>
                                    <th>
                                        性别
                                    </th>
                                    <th>
                                        手机号
                                    </th>
                                    <th>
                                       微信号
                                    </th>

                                    <th>
                                        地址
                                    </th>
                                    <th>
                                        预定时间
                                    </th>
                                    <th>
                                        备注
                                    </th>
                                    <th class="table-set">
                                        操作
                                    </th>
                                </tr>
                                </thead>
                                <tbody id="tUser">
                                <c:forEach items="${sessionScope.orderList}" var="u">

                                    <tr>
                                        <td>${u.order_id}</td>
                                        <td>${u.cus_name}</td>
                                        <td>${u.cus_sex}</td>
                                        <td>${u.cus_phone}</td>
                                        <td>${u.cus_wechat}</td>
                                        <td>${u.cus_address}</td>
                                        <td>${u.cus_ordertime}</td>
                                        <td>${u.remark}</td>
                                        <td>
                                            <a href="OrderServlet?order_id=${u.order_id}&method=delete">删除</a>
                                            &nbsp
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>

                        </form>
                    </div>
                </div>
            </div>

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
