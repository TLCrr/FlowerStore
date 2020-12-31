<%--
  Created by IntelliJ IDEA.
  User: Maibenben
  Date: 2019/12/13
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
    <h1 style="text-align:center">在线预定</h1>
    <div class="admin-content">
        <div class="admin-content-body">
            <div class="am-g" style="margin-left: 300px;width: 900px;height: 600px;">
                <form class="am-form am-form-horizontal" action="OrderServlet" method="post" style="padding-top: 30px;">
                    <input value="504" name="roleId" type="hidden">
                    <div class="am-form-group">
                        <label for="user-name" class="am-u-sm-3 am-form-label">
                            姓名
                        </label>
                        <div class="am-u-sm-9">
                            <input id="roleName" required="" placeholder="请输入姓名" value="" name="cus_name" type="text">
                        </div>
                    </div>
                    <div class="am-form-group">
                        <label for="user-name" class="am-u-sm-3 am-form-label">
                            性别
                        </label>
                        <div class="am-u-sm-9" style="line-height: 30px;">
                            <input type="radio" value="男" id="man" name="cus_sex" }/>
                            <label for="man">
                                男
                            </label> &nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" id="woman" value="女" name="cus_sex" } />
                            <label for="woman">
                                女
                            </label>
                            <br />
                        </div>
                    </div>

                    <div class="am-form-group">
                        <label for="user-name" class="am-u-sm-3 am-form-label">
                            手机号
                        </label>
                        <div class="am-u-sm-9">
                            <input id="roleName4" required="" placeholder="请输入手机号" value="" name="cus_phone" type="text">
                        </div>
                    </div>
                    <div class="am-form-group">
                        <label for="user-name" class="am-u-sm-3 am-form-label">
                            微信号
                        </label>
                        <div class="am-u-sm-9">
                            <input id="roleName3" required="" placeholder="请输入微信号" value="" name="cus_wechat" type="text">
                        </div>
                    </div>
                    <div class="am-form-group">
                        <label for="user-name" class="am-u-sm-3 am-form-label">
                            地址
                        </label>
                        <div class="am-u-sm-9">
                            <input id="roleName2" required="" placeholder="请输入地址" value="" name="cus_address" type="text">
                        </div>
                    </div>
                    <div class="am-form-group">
                        <label for="user-name" class="am-u-sm-3 am-form-label">
                            预定时间
                        </label>
                        <div class="am-u-sm-9">
                            <input id="roleName1" required="" placeholder="请输入预定时间" value="" name="cus_ordertime" type="text">
                        </div>
                    </div>

                    <div class="am-form-group">
                        <label for="user-name" class="am-u-sm-3 am-form-label">
                            备注
                        </label>
                        <div class="am-u-sm-9">
                            <input required=""value="" name="remark" type="text">
                        </div>
                    </div>
                    <div>
                        <input type="submit" value="确定" style="margin-left: 540px;width: 50px;height: 30px;">
                    </div>
                    <input type="hidden" value="customer" name="test">
                </form>
            </div>
        </div>
    </div>
</div>
</body>

</html>
