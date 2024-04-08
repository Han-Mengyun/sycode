<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2024/3/25
  Time: 20:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登录界面
    </title>
    <link rel="stylesheet" href="login.css">
<style>
    a{
        text-decoration: none;
    }
</style>
</head>

<body>
<div class="login-box">
    <div class="loginpicture">
    </div>
    <div class="logintext">
        <form action="Login" method="post">
            ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" class="text-input" name="name"><br>
            密&nbsp;&nbsp;&nbsp;码&nbsp;&nbsp;&nbsp;<input type="password" class="password-input"
                                                           name="pwd">
            <br>
            <input type="submit" class="btn" value="提交">
            <!-- <a href="1.jsp">注册 -->
            <input type="reset" value="重置"><br><br><br>
            <a href="new_signup.jsp"><p5>如果您没有账号，请点击这里注册</p5></a>
        </form>
    </div>
</div>
</body>

</html>

