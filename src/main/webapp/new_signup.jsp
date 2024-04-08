
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>注册
    </title>
    <link rel="stylesheet" href="login.css">
</head>

<body>
<div class="login-box">
    <div class="logintext">
        <form action="register" method="post">
            请输入用户名&nbsp;&nbsp;&nbsp;<input type="text" class="text-input" name="name"><br>
            请输入密&nbsp;&nbsp;&nbsp;码&nbsp;&nbsp;&nbsp;<input type="password" class="password-input" name="pwd1"><br>
            请确认密&nbsp;&nbsp;&nbsp;码&nbsp;&nbsp;&nbsp;<input type="password" class="password-input" name="pwd2">
            <br>
            <input type="submit" class="btn" value="注册">
<%--            <input type="button" value="注册" onclick="checkPasswordMatch(),checkusername(),checked()">--%>
            <input type="reset" value="重置">
        </form>
    </div>
</div>
</body>

</html>