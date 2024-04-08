<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2024/4/6
  Time: 18:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>发送消息</title>
    <link rel="stylesheet" href="modify.css">
</head>
<body>
<div class="modify-box">
    <div class="modify">
        <h3>消息发送</h3>
        <form id="editForm" action="infChange" method="post">
            收件人ID&nbsp;&nbsp;&nbsp;
            <input type="text" class="text_input" name="receive_id">
            <br>
            <br>
            信息内容&nbsp;&nbsp;&nbsp;<input type="text" class="text-input" name="myimg">
            <input type="submit" class="btn" value="保存">
            <input type="reset" value="重置">
        </form>
    </div>
</div>
</body>
</html>
