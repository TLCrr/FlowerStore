<%--
  Created by IntelliJ IDEA.
  User: Maibenben
  Date: 2019/12/12
  Time: 15:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>

<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="Bookmark" href="/favicon.ico">
    <link rel="Shortcut Icon" href="/favicon.ico" />
    <!--[if lt IE 9]>
    <script type="text/javascript" src="lib/html5shiv.js"></script>
    <script type="text/javascript" src="lib/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="css/H-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="css/H-ui.admin.css" />
    <link rel="stylesheet" type="text/css" href="css1Hui-iconfont/1.0.8/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="skin/default/skin.css" id="skin" />
    <link rel="stylesheet" type="text/css" href="css/style1.css" />
    <!--[if IE 6]>
    <script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <title>花店管理系统</title>
    <meta name="keywords" content="H-ui.admin v3.1,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
    <meta name="description" content="H-ui.admin v3.1，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
</head>

<body>
<header class="navbar-wrapper">
    <div class="navbar navbar-fixed-top">
        <div class="container-fluid cl">
            <span class="logo navbar-slogan f-l mr-10 hidden-xs">花店管理系统</span>
            <nav id="Hui-userbar" class="nav navbar-nav navbar-userbar hidden-xs">
                <ul class="cl">
                    <li>
                        <span>在线人数：<%=application.getAttribute("peopleOnline")%></span>
                    </li>
                    <li>  店主</li>
                    <li class="dropDown dropDown_hover">
                        <a href="#" class="dropDown_A">${sessionScope.SESSION_user.username}</a>
                        <ul class="dropDown-menu menu radius box-shadow">

                            <li>
                                <a href="index.jsp">退出</a>
                            </li>
                        </ul>
                    </li>
<%--                    <li id="Hui-skin" class="dropDown right dropDown_hover">--%>
<%--                        <a href="javascript:;" class="dropDown_A" title="换肤"><i class="Hui-iconfont" style="font-size:18px">换肤</i></a>--%>
<%--                        <ul class="dropDown-menu menu radius box-shadow">--%>
<%--                            <li>--%>
<%--                                <a href="javascript:;" data-val="blue" title="蓝色">蓝色</a>--%>
<%--                            </li>--%>
<%--                            <li>--%>
<%--                                <a href="javascript:;" data-val="green" title="绿色">绿色</a>--%>
<%--                            </li>--%>
<%--                            <li>--%>
<%--                                <a href="javascript:;" data-val="red" title="红色">红色</a>--%>
<%--                            </li>--%>
<%--                            <li>--%>
<%--                                <a href="javascript:;" data-val="yellow" title="黄色">黄色</a>--%>
<%--                            </li>--%>
<%--                            <li>--%>
<%--                                <a href="javascript:;" data-val="orange" title="橙色">橙色</a>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                    </li>--%>
                </ul>
            </nav>
        </div>
    </div>
</header>
<aside class="Hui-aside">
    <div class="menu_dropdown bk_2">
        <dl id="menu-product">
            <dt>用户管理</dt>
            <dd>
                <ul>
                    <li>
                        <a data-href="user.jsp" data-title="查看用户" href="javascript:void(0)">查看用户</a>
                    </li>
                </ul>
                <ul>
                    <li>
                        <a data-href="adduser.jsp" data-title="增加用户" href="javascript:void(0)">增加用户</a>
                    </li>

                </ul>
                <ul>
                    <li>
                        <a data-href="finduser.jsp" data-title="查询用户" href="javascript:void(0)">查询用户</a>
                    </li>
                </ul>
            </dd>
        </dl>

        </dl>
        <dl id="menu-product1">
            <dt>鲜花管理</dt>
            <dd>
                <ul>
                    <li>
                        <a data-href="FlowerServlet?method=show1&username=${sessionScope.SESSION_user.username}" data-title="查看鲜花" href="javascript:void(0)">查看鲜花</a>
                    </li>

                </ul>
                <ul>
                    <li>
                        <a data-href="addflower.jsp" data-title="增加鲜花" href="javascript:void(0)">增加鲜花</a>
                    </li>

                </ul>
                <ul>
                    <li>
                        <a data-href="updateflower.jsp" data-title="修改鲜花" href="javascript:void(0)">修改鲜花</a>
                    </li>

                </ul>
            </dd>
        </dl>

        <dl id="menu-tongji">
            <dt>订单管理</dt>
            <dd>
                <ul>
                    <li>
                        <a data-href="OrderServlet?method=show" data-title="查看订单" href="javascript:void(0)">查看订单</a>
                    </li>
                </ul>
                <ul>
                    <li>
                        <a data-href="reserve.jsp" data-title="增加订单" href="javascript:void(0)">增加订单</a>
                    </li>

                </ul>
            </dd>
        </dl>
        <dl id="menu-system2">
            <dt>留言管理</dt>
            <dd>
                <ul>
                    <li>
                        <a data-href="MessageServlet?method=show" data-title="查看留言" href="javascript:void(0)">查看留言</a>
                    </li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-system">
            <dt>账号管理</dt>
            <dd>
                <ul>
                    <li>
                        <a data-href="change_password.jsp" data-title="修改密码" href="javascript:void(0)">修改密码</a>
                    </li>
                </ul>
            </dd>
        </dl>
    </div>
</aside>

<section class="Hui-article-box">
    <div id="Hui-tabNav" class="Hui-tabNav hidden-xs" style="display: none;">
        <div class="Hui-tabNav-wp">
            <ul id="min_title_list" class="acrossTab cl">
                <li class="active">
                    <span title="我的桌面" data-href="user.jsp">我的桌面</span>
                    <em></em></li>
            </ul>
        </div>
        <div class="Hui-tabNav-more btn-group">
            <a id="js-tabNav-prev" class="btn radius btn-default size-S" href="javascript:;"></a>
            <a id="js-tabNav-next" class="btn radius btn-default size-S" href="javascript:;"></a>
        </div>
    </div>
    <div id="iframe_box" class="Hui-article">
        <div class="show_iframe">
            <div class="loading"></div>
            <iframe scrolling="yes" frameborder="0" src="user.jsp"></iframe>
        </div>
    </div>
</section>

<div class="contextMenu" id="Huiadminmenu">
    <ul>
        <li id="closethis">关闭当前 </li>
        <li id="closeall">关闭全部 </li>
    </ul>
</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/layer.js"></script>
<script type="text/javascript" src="js/H-ui.min.js"></script>
<script type="text/javascript" src="js/H-ui.admin.js"></script>
<!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/jquery.contextmenu/jquery.contextmenu.r2.js"></script>
<script type="text/javascript">
    $(function() {
        /*$("#min_title_list li").contextMenu('Huiadminmenu', {
            bindings: {
                'closethis': function(t) {
                    console.log(t);
                    if(t.find("i")){
                        t.find("i").trigger("click");
                    }
                },
                'closeall': function(t) {
                    alert('Trigger was '+t.id+'\nAction was Email');
                },
            }
        });*/
    });
    /*个人信息*/
    function myselfinfo() {
        layer.open({
            type: 1,
            area: ['300px', '200px'],
            fix: false, //不固定
            maxmin: true,
            shade: 0.4,
            title: '查看信息',
            content: '<div>管理员信息</div>'
        });
    }

    /*资讯-添加*/
    function article_add(title, url) {
        var index = layer.open({
            type: 2,
            title: title,
            content: url
        });
        layer.full(index);
    }
    /*图片-添加*/
    function picture_add(title, url) {
        var index = layer.open({
            type: 2,
            title: title,
            content: url
        });
        layer.full(index);
    }
    /*产品-添加*/
    function product_add(title, url) {
        var index = layer.open({
            type: 2,
            title: title,
            content: url
        });
        layer.full(index);
    }
    /*用户-添加*/
    function member_add(title, url, w, h) {
        layer_show(title, url, w, h);
    }
</script>

</body>
</html>
