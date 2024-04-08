<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2024/4/7
  Time: 8:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>剪纸</title>
    <style>
        body{
            font-size: 12px;
            font-family: "微软雅黑";
            line-height: 22px;
            background: #d4d1d1;
        }
        .main{
            /* background-color:lightcyan; */
            background-image: url(images/13.jpg);
            width: 850px;
            margin-top: 20px;
            justify-content: center;
            align-items: center;
        }
        *{
            margin: 0 auto;
            padding: 0;
            box-sizing: border-box;
        }
        h1,h2{
            text-align: center;
            color: rgb(188, 17, 17);
        }



        .active{
            padding: 0 65px;
            text-align: center;
        }
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #c52727;
        }
        li {
            float: left;

        }
        li a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        li a:hover {
            background-color: #dfa1c3;
            display: block;
        }
        .foot{
            text-align: center;
        }
    </style>

</head>
<body>
<div class="main">
    <br>
    <h1>剪纸</h1>
    <br>
    <h2>中国剪纸是世界非物质文化遗产之一</h2>
    <br>
    <div class="nav">
        <ul class="navlist">
            <li class="active"><a href="diyizhang.jsp">首页</a></li>
            <li class="active"><a href="jiandanjieshao.jsp">简单介绍</a></li>
            <li class="active"><a href="fenleii.jsp">分类</a></li>
            <li class="active"><a href="jianzhitupian.jsp">剪纸图片</a></li>
        </ul>
    </div>

    <img src="images/15.jpg" alt="" style="height: 350px;width: 850px;">
    <br><br>
    <h2>剪纸图片</h2>
    <br>
    <img src="images/18.jpg" alt="" style="width: 400px;height: 350px;">
    <img src="images/20.jpg" alt="" style="width: 400px;height: 350px;">
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>
    <h3></h3>
    <div class="foot" >
        <p>|&nbsp;版权申明&nbsp; |&nbsp;联系我们&nbsp;|&nbsp;友情链接&nbsp;|&nbsp;
        </p>
        <p>艺术专区非物质遗产文化有限公司 版权所有 陕ICP备11032616号</p>
    </div>
</div>
</body>
</html>
