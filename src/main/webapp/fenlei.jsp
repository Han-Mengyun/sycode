<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2024/4/7
  Time: 8:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .nav{
            height: 40px;
            background-color: black;
            box-shadow: 0 1px 2px #666;
        }
        *{
            margin: 0;
            padding: 0;
            text-decoration: none;
            list-style: none;
        }
        .btli{
            float: left;
            line-height: 40px;
            text-align: center;
        }
        .navlist a{
            color: purple;
            display: block;
        }
        .navlist a:hover{
            background-color: lightcoral;
        }
        .droplist{
            /* 改变下拉列表的颜色 */
            background: blue;
            /* 让它不显示 */
            display: none;
            /* 把列表变为圆角 */
            border-radius: 6px;
            /* 把超出来的部分隐藏 */
            overflow: hidden;
        }
        .btli:hover .droplist{
            display: block;
        }
    </style>
</head>
<body>
<div class="nav">
    <ul class="navlist">
        <li class="btli"><a href="#">分类</a>
            <ul class="droplist">
                <li class="btli"><a href="#">地区(省市区镇)</a></li>
                <li class="btli"><a href="#">非遗工艺</a></li>
                <li class="btli"><a href="#">风景</a></li>
            </ul>
        </li>
    </ul>

</div>
</body>
</html>
