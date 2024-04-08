
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>个人信息</title>
    <link rel="stylesheet" href="personal.css">
</head>
<body>
<%

%>
    <div class="personal-box">
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
                <div class="neirong content1">
                    <h2 style="text-align:center;">个人信息</h2>
                    <hr>
                    <form>
                    <p class="cm"><span>用户名:</span><span id="usedatarname">${userInfo.user_name}</span></p>
                    <p class="cm"><span>用户id:</span><span id="usernameid">${userInfo.id}</span></p>
                    <p class="cm"><span>性别:</span><span id="gender">${userInfo.gender}</span></p>
                    <p class="cm"><span>电子邮箱:</span><span id="email">${userInfo.email}</span></p>
                    <p class="cm"><span>申遗日期:</span><span id="success-data">${userInfo.successData}</span></p>
                    </form>
                    <div class="modify-box">
                        <a href="ownChange.jsp">
                            <el-buttom>修改信息</el-buttom>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
