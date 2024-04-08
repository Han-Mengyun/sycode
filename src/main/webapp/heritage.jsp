<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2024/3/30
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>申遗项目信息</title>
    <link rel="stylesheet" href="personal.css">
</head>
<body>
<div class=personal-box>
    <!--个人中心顶部盒子 -->
    <div class="Personal-top">
        <div class="Personal-avatar">头像</div>
        <div class="Personal-backgroundpicture">背景图片</div>
    </div>
    <!-- 个人中心主要盒子 -->
    <div class="Personal-main">
        <!-- 索引界面(左边盒子) -->
        <div class="aside">
            <div class="item"><button onclick="window.location='ownimg1'">个人信息</button></div>
            <div class="item"><button onclick="window.location='heritage'">非遗项目</button></div>
            <div class="item"><button onclick="window.location='photo'">我的商城</button></div>
            <div class="item"><button onclick="window.location='information'">我的消息</button></div>
            <div class="item"><button onclick="window.location='index.jsp'">退出</button></div>
        </div>
        <!-- 信息栏 -->
        <div class="content">
            <!-- 信息界面(右边盒子) -->
            <div class="neirong content2">
                <h2 style="text-align:center;">申遗项目信息</h2>
                <hr>
                <p class="cm"><span>非遗名称:</span><span id="fyname"></span><span>${userInfo.fyName}</span></p><br>
                <p class="cm"><span>非遗简介:</span><span id="imp"></span><span>${userInfo.fyImg}</span></p>
                <div class="modify-box">
                <a href="heritageChange.jsp">
                    <el-buttom>修改信息</el-buttom>
                </a>
                </div>
            </div>

        </div>
    </div>
</div>
</body>
</html>
