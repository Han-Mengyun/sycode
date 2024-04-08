<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2024/4/7
  Time: 8:27
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
            background-color:rgba(115, 40, 40, 0.18);
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
    <img src="images/23.jpg" alt="" style="height: 350px;width: 850px;">

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
            <li><a href="">皮影制作</a></li>
        </ul>
    </div>
    <h3>&nbsp;皮影制作是一个复杂且精细的过程，通常包括以下步骤：</h3>
    <div>
        <li>画稿。首先在较厚的白色纸张上用铅笔绘制出人物或场景。这些图纸通常包括人物的头、身体和脚，而手和脚则是分开绘制的。完成初稿后，使用勾线笔对图像进行勾勒，然后擦除多余的铅笔印记。</li>
        <li>涂色。接着用彩色笔对图像进行涂色，注意要涂均匀且不要损坏纸张。</li>
        <li>剪切与组装。使用剪刀将涂色后的图像剪下来。然后在手和脚的部分用大头针扎孔，以便这些部位能够活动。孔扎好后，需要用透明胶将吸管固定在孔中，以便操纵皮影的动作。</li>
        <li>关节连接。使用活扣（公扣和母扣）来制作关节，确保连接牢固且不影响纸张。</li>
        <li>装订与固定。最后，将所有部件装订在一起，确保连接点牢固且不影响操作。</li>
    </div>
    <br><br><br><br><br><br><br><br>
    <h3>此外，还有一种更传统的制作方法，使用硬纸板或兽皮来制作皮影。这种方法需要更多的技巧和耐心，因为兽皮更柔软且耐用，适合承受灯光和频繁操作。在制作过程中，还需要对图像进行细致的描绘和剪刻，以及精确的装订和固定。</h3>
    <br><br>
    <div class="foot" >
        <p>|&nbsp;版权申明&nbsp; |&nbsp;联系我们&nbsp;|&nbsp;友情链接&nbsp;|&nbsp;
        </p>
        <p>艺术专区非物质遗产文化有限公司 版权所有 陕ICP备11032616号</p>
    </div>
</div>
</body>
</html>
