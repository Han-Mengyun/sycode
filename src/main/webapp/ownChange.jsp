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
    <title>个人信息修改界面</title>
    <link rel="stylesheet" href="modify.css">
</head>
<body>
<div class="modify-box">
    <div class="modify">
        <h3>个人信息修改</h3>
        <form id="editForm" action="ownchange" method="post">
            <br>
            <br>

            <br><br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;性别&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <label>
                <input class="radio-input" value="男" type="radio" checked="checked" name="gender">男
            </label>
            <label>
                <input class="radio-input" value="女" type="radio" name="gender">女
            </label>
            <br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;申遗日期&nbsp;&nbsp;&nbsp;
            <input type="text" class="text_input" name="successDate">
            <br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电子邮箱&nbsp;&nbsp;&nbsp;<input type="text" class="text-input" name="email">
            <input type="submit" class="btn" value="保存">
            <input type="reset" value="重置">
        </form>
    </div>
</div>
</body>
</html>
