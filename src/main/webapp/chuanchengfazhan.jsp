<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2024/4/8
  Time: 22:59
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
            background-image: url(21.jpg);
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
            background-color:rgba(218, 58, 58, 0.507);
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
    <img src="images/25.jpg" alt="" style="height: 350px;width: 850px;">

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
            <li><a href="">传承发展</a></li>
        </ul>
    </div>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;皮影戏，这一中国传统的民间艺术形式，其历史可以追溯到唐代，到了明代达到了成熟。它曾是中国民间非常流行的娱乐活动，尤其在农村地区。然而，随着现代化的发展，皮影戏逐渐失去了市场，面临着来自电影、电视剧等新兴娱乐形式的竞争。</h3>
    <br>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;皮影戏的发展现状呈现出一种复杂的局面。尽管面临挑战，皮影艺术仍然保持着其独特的传统特色，并在全国范围内得到了一定的发展。现代中国皮影艺术不仅在国内受到关注，也在国际上取得了一定的影响力。然而，皮影戏的生存环境并不乐观，特别是在乡村地区，青少年观众稀缺，演出市场萎缩。</h3>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;为了应对这些挑战，一些皮影戏表演团体和艺术家正在努力推广和传承这门艺术。地方政府也加大了对皮影戏的支持和保护力度。此外，随着数字化技术的发展，皮影戏开始尝试与现代技术结合，如数字化创新和通过网络平台传播，这些尝试为皮影戏的传播和保护提供了新的可能性。</h3>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;然而，皮影戏的传承和发展也面临着一些难题。传统表演技艺的程式化、新观众的缺失以及年轻一代对皮影艺术兴趣的缺乏，都是需要解决的问题。此外，皮影技艺的复杂性和对材料的高要求，以及难以形成工业化生产的问题，也制约了其更广泛的发展。</h3>
    <br>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总的来说，皮影戏的发展现状体现了其在现代化进程中的适应与挑战。尽管面临困难，皮影戏仍然拥有其独特的艺术魅力和文化价值，值得进一步的保护和传承。</h3>

    <br>
    <div class="foot" >
        <p>|&nbsp;版权申明&nbsp; |&nbsp;联系我们&nbsp;|&nbsp;友情链接&nbsp;|&nbsp;
        </p>
        <p>艺术专区非物质遗产文化有限公司 版权所有 陕ICP备11032616号</p>
    </div>
</div>
</body>
</html>
