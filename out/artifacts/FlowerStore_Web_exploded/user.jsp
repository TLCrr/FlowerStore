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
                <div style="text-align:left;margin-bottom: 20px" class="am-g">


<%--                            <div  class="am-btn-group am-btn-group-xs"style="border:3px #0a628f solid;height: 30px; width: 50px;">--%>
<%--                                <a href="adduser.jsp">增加</a>--%>
<%--                            </div>--%>



<%--                            <div  class="am-btn-group am-btn-group-xs"style="border:3px #0a628f solid;height: 30px; width: 50px;">--%>
<%--                                <a href="finduser.jsp">查询</a>--%>
<%--                            </div>--%>

                </div>
                <div class="am-g" style="margin-top: -30px;">
                    <div class="am-u-sm-12">
                        <form class="am-form" action="user/delAll.action">
                            <table class="am-table am-table-striped am-table-hover table-main">
                                <thead>
                                <tr>
                                    <th>
                                        用户名
                                    </th>
                                    <th>
                                        密码
                                    </th>
                                    <th class="table-set">
                                        操作
                                    </th>
                                </tr>
                                </thead>
                                <tbody id="tUser">
                                <c:forEach items="${sessionScope.userList}" var="u">
                                    <tr>
                                        <td>${u.username}</td>
                                        <td>${u.password}</td>
                                        <td>
                                            <a href="UserServlet?uid=${u.uid}&method=delete">删除</a>
                                            &nbsp;
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                                </table>
                        </form>
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
