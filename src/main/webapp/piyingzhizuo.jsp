<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2024/4/7
  Time: 8:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body{
            font-size: 12px;
            font-family: "微软雅黑";
            line-height: 22px;
            background: #d4d1d1;
        }
        .main{
            /* background-color:lightcyan; */
            background-image: url(images/21.jpg);
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
            color: rgb(120, 125, 103);
        }



        .active{
            padding: 0 65px;
            text-align: center;
        }
        .navlist {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color:grey;
        }
        .naaav{
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color:rgba(225, 94, 94, 0.568);
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
    <h1>皮影</h1>
    <br>
    <h2>皮影是世界非物质文化遗产之一</h2>
    <br>
    <img src="images/24.jpg" alt="" style="height: 350px;width: 850px;">

    <div class="nav">
        <div class="nav">
            <!-- <br><br><br><br> -->

            <ul class="navlist">
                <li class="active"><a href="piyingzhizuo.jsp">首页</a></li>
                <li class="active"><a href="diyiizhang.jsp">历史起源</a></li>
                <li class="active"><a href="shouyee.jsp">皮影制作</a></li>
                <li class="active"><a href="chuanchengfazhan.jsp">传承发展</a></li>
            </ul>
        </div>
        <br>
        <div class="naav">
            <ul class="naaav">
                <li><a href="">皮影戏</a></li>
            </ul>
        </div>
        <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;皮影戏，又称影子戏或灯影戏，是一种历史悠久的中国传统民间艺术。其起源和发展是一个逐渐演变的过程，涉及多个历史时期和地域：</h3>
        <br>
        <div>
            <strong>
                <li>&nbsp;起源时期。皮影戏最早的形式可以追溯到西汉时期，据《汉书》记载，汉武帝时期已有类似皮影戏的表演形式。</li>
                <li>&nbsp;发展时期。皮影戏在唐朝时期逐渐发展成熟，成为一种独立的艺术形式，并在宋代达到鼎盛，成为民间和宫廷娱乐的重要组成部分。</li>
                <li>&nbsp;传播。皮影戏在元代时期传至西亚和欧洲，成为世界上最早由人配音的活动影画艺术。</li>
            </strong>
        </div>
        <br><br><br><br>
        <h3>皮影戏的表演形式和制作技艺随着时间的推移而发展，从简单的影子形象到复杂的故事情节和人物形象，皮影戏不仅是一种娱乐形式，也反映了中国丰富的文化和社会历史。</h3>

        <div class="foot" >
            <p>|&nbsp;版权申明&nbsp; |&nbsp;联系我们&nbsp;|&nbsp;友情链接&nbsp;|&nbsp;
            </p>
            <p>艺术专区非物质遗产文化有限公司 版权所有 陕ICP备11032616号</p>
        </div>
    </div>
</div>
</body>
</html>
