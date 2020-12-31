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

    <link rel="stylesheet" href="css/flower.css">
</head>

<body>


<%--            <div class="am-btn-group am-btn-group-xs"style="border:3px #0a628f solid;height: 30px; width: 50px;">--%>
<%--                <a href="addflower.jsp">增加</a>--%>
<%--            </div>--%>


<div id=list2>
    <ul>
        <c:forEach items="${sessionScope.flowerList}" var="u">
            <li>
                <div>
                    <a href="#">
                        <img width="200" height="180" src="${u.flower_picture}"/> <br /><br />
                    </a>
                        <%--                      <img width="50" height="50" src="images/flowers.jpg" alt="Redmi Note8 Pro"/> <br /><br />--%>
                        <%--                    <img width="50" height="50" src="images/flower1.jpg" alt="Redmi Note8 Pro"/> <br /><br />--%>
                    <span style="font-style: oblique">${u.flower_name}</span><br />
                    <span style="color: #F581B1">&yen;${u.flower_price}.00</span><br />
                    <span>上货日期${u.flower_date}</span><br />
                    <a href="FlowerServlet?flower_id=${u.flower_id}&method=delete">删除</a>
                </div>
            </li>
        </c:forEach>

    </ul>
</div>
</body>

</html>
