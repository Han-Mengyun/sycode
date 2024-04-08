<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2024/4/7
  Time: 8:24
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

    <img src="images/14.jpg" alt="" style="height: 350px;width: 850px;">
    <br><br>
    <h2>分类</h2>
    <br>
    <h3 style="color: #c52727;font-size: large;">单色剪纸</h3>
    <br>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;单色剪纸是剪纸中最基本的形式，由红色、绿色、褐色、黑色、金色等各种颜色剪成，主要用于窗花装饰和刺绣的底样。主要有阴刻、阳刻、阴阳结合三种表现手法。用于刺绣底样的剪纸，常用剪刺结合的手法。刺是以针尖在花纹的细部刺出小型圆点，在一些部位留出“暗刀”，可以作为刺绣时套针换线的依据。折叠剪纸、剪影、撕纸等都是单色剪纸的表现形式。</h3>
    <br><br>
    <h2 style="color: rgb(104, 186, 168);">一、折叠剪纸</h2>
    <br><br>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;折叠剪纸是民间最常见的一种制作表现方法。所谓折叠剪纸即经过不同方式折叠剪制而成的剪纸。最早的“对马”“对猴”等团花就是经折叠剪出的。折叠剪纸折法简明，制作简便，省工省时，造型概括而有一定变形，尤其适于表现结构对称的形体和对称的图式，如人、蛙、蝶、龟、倒影、对鱼等，几何纹、花卉、景物、器具等题材都能适应，而且展开极为对称，又能变化出多种适合形，两方连续，四方连续或多方连续，这是它能长久得以流传的一个主要原因，折叠剪纸对中国的剪纸普及和工艺图案造型，发挥着重要作用。</h3>
    <br><br>
    <h2 style="color: rgb(104, 186, 186);">二、剪影</h2>
    <br>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;剪影是剪纸艺术中的一种古老形式，通过外轮廓表现人物和物象的形状，所以它最注重外轮廓的美和造型，剪影由于受轮廓造型的局限，一般以表现人物或其他物体的侧面为好。其工具主要是剪刀和刻刀，纸一般用黑色或重色纸，在表现人物侧影时，一般是边看对象边剪。剪影很适合表现透光效果，是一种很有特色的剪纸类型</h3>
    <h2 style="color: rgb(104, 180, 186);">三、撕纸</h2>
    <br>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;撕纸是由传统的民间剪纸变形出的新类型。其方法是利用不同类型的纸，采用手撕的方法去撕裂造型，以手代剪自然会受到很大的局限，不适合去表现巧工细琢的效果，但正是这种局限，又恰恰显示出它独特的艺术个性，有一种古拙雅朴、豪放雄健的格调。在撕纸过程中经常会出现一种随意性，有一种自然天成的韵味。</h3>

    <br><br>
    <h3 style="color: #0e34cd;font-size: large;">彩色剪纸</h3>
    <br>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;随着剪纸表现形式的探索和发展，彩色剪纸的形式和技法在逐渐增多，有点染、套色、分色、填色、木印、喷绘、勾绘和彩编等。诸种形式各有自己的特色和独到之处：点染剪纸滋润、装饰性强；套色剪纸脆利、色块鲜亮；分色剪纸分色截然、色感丰富；填色剪纸则单纯、洁净、鲜明，均给人不同的感受。</h3>
    <h2 style="color: rgb(171, 183, 103);">一、点染剪纸</h2>
    <br><br>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;以颜色在刻纸上进行点色为点染剪纸。这种剪纸也属于刻纸，在设计上阳线不多，偏重干小面积的阴刻，以留出大面积的阳面进行点染。类似于木版年画的效果。</h3>
    <br>
    <h2 style="color: rgb(171, 183, 103);">二、套色剪纸</h2>
    <br>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;套色剪纸通常以阳刻为主，与点染剪纸相反，进行大面积镂空，给套色留有余地。从作品的背面贴以色纸块，多用黑纸或金纸剪刻，按肤色、服饰、器物、花木等分别贴以不同的颜色。</h3>
    <br>
    <h2 style="color: rgb(171, 183, 103);">三、分色剪纸</h2>
    <br>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;分色剪纸有的也称为剪贴剪纸。是两种或两种以上单色剪纸的组合拼贴，基本上还是单色剪纸。它是用剪好的不同颜色形状的纸拼成一个画面。拼贴组合时要注意颜色之间的协调性，不宜过于琐碎。</h3>
    <br><br>
    <h3 style="color: #21681b;font-size: large;">立体剪纸</h3>
    <br>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;立体剪纸既可是单色，也可是彩色的。它采用了绘画、剪刻、折叠、黏合等综合手法产生的一种近于雕塑、浮雕的新型剪纸，它吸取了现代美术的技巧，充分体现了写实与美术浪漫的特点，使剪纸由平面感变为立体化，可用于观赏造型及儿童的手工制作等。</h3>

    <div class="foot" >
        <br>
        <p>|&nbsp;版权申明&nbsp; |&nbsp;联系我们&nbsp;|&nbsp;友情链接&nbsp;|&nbsp;
        </p>
        <p>艺术专区非物质遗产文化有限公司 版权所有 陕ICP备11032616号</p>
    </div>
</div>
</body>
</html>
