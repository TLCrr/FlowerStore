<%--
  Created by IntelliJ IDEA.
  User: Maibenben
  Date: 2019/12/13
  Time: 9:14
  To change this template use File | Settings | File Templates.
--
<%--jstl标签-取代JSP页面上的Java代码--%>
<%--MVC设计理念的优势是将动作控制、数据处理、结果显示三者分离。--%>
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

<div id=list2>
    <ul>
<%--        EL存取变量数据的方法很简单，例如：${username}。它的意思是取出某一范围中名称为username的变量。--%>
        <c:forEach items="${sessionScope.flowerList}" var="u">
            <li>
                <div>
                    <a href="#">
                        <img width="200" height="180" src="${u.flower_picture}"/> <br /><br />
                    </a>
<%--                      <img width="50" height="50" src="images/flowers.jpg" alt="Redmi Note8 Pro"/> <br /><br />--%>
<%--                    <img width="50" height="50" src="images/flower1.jpg" alt="Redmi Note8 Pro"/> <br /><br />--%>
                    <span >${u.flower_name}</span><br />
                    <span style="color: #f52e16">&yen;${u.flower_price}.00</span><br />
                    <span>上货日期${u.flower_date}</span><br />
                    <form>
<%--                        <input type="submit" value="加入购物车" >--%>
                        <a href="FlowerServlet?method=add&flower_id=${u.flower_id}&username=${sessionScope.SESSION_user.username}">加入购物车</a>
                    </form>
                </div>
            </li>
        </c:forEach>

    </ul>
</div>
</body>

</html>
