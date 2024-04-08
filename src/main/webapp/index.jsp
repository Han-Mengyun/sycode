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
    <title>非物质遗产</title>
    <link rel="stylesheet" href="style2.css">
    <style>
        *{
            margin: 0 auto;
            padding: 0;
            box-sizing: border-box;
        }
        body{
            font-size: 12px;
            font-family: "微软雅黑";
            line-height: 22px;
            background: #d4d1d1;
        }
        .button {
            border: none;
            padding: 15px 32px;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }
        .main {
            background-color:lightcyan;
            width: 850px;
            /* height: 1400px; */
            margin-top: 20px;
            justify-content: center;
            align-items: center;
        }
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }

        li {
            float: left;

        }
        .active{
            padding: 0 65px;
            text-align: center;
            font-size: 20px;

        }
        li a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        li a:hover {
            background-color: #944040;
            display: block;
        }
        .sous{
            position: absolute;
            top: 15%;
            left: 60%;
            transform:translate(-4%,-50%) ;
        }
        .foot{
            text-align: center;
        }
    </style>
</head>
<body>

<div class="main">
<%--    <button style="float: right">注册</button>&nbsp;&nbsp;&nbsp;--%>
    <a href="denglu.jsp">
        <button style="float: right">登录</button>
    </a>
    <div class="top">
        <div class="logo"><img src="images/logo.png" style="width: 70px;   height: 80px;   float: left;   margin-left: 28px;   margin-right: 30px;   padding-top: 10px;   border-radius:55px"/><br><h1>非&nbsp;&nbsp;物&nbsp;&nbsp;质&nbsp;&nbsp;文&nbsp;&nbsp;化&nbsp;&nbsp;遗&nbsp;&nbsp;产</h1></div>
        <div class="right">
            <div class="sous">
                <form action="insert" method="post">
                    <input type="text" class="text-input" name="insertwords" placeholder="请输入....">
                    <button type="submit">搜索</button>
                </form>


            </div>
        </div>
    </div>
    <div class="nav">
        <br><br><br><br>

        <ul class="navlist">
            <li class="active" ><a href="#">首页</a></li>
            <li class="active"><a href="#">分类</a></li>
            <li class="active"><a href="#">商城</a></li>
            <li class="active"><a href="#">我的</a></li>
        </ul>
    </div>


    <!-- 轮播图 -->
    <div id="container">
        <ul class="parent" style="left: 0">
            <li><a href="diyiizhang.jsp"><img src="images/3.png"></a></li>
            <li><a href="dierzhang.jsp"><img src="images/4.jpg"></a></li>
            <li><a href="disanzhang.jsp"><img src="images/5.png"></a></li>
            <li><a href="diyizhang.jsp"><img src="images/19.png"></a></li>
        </ul>

        <div class="btnLeft">&lt;</div>
        <div class="btnRight">&gt;</div>
        <div class="modal">
            <div class="title"></div>
            <div class="dots">
                <ul class="clearfix">
                    <li class="on"></li>
                    <li class="off"></li>
                    <li class="off"></li>
                    <li class="off"></li>
                </ul>
            </div>
        </div>
    </div>

    <hr>
    <h2 style="color: rgb(33, 26, 134);">中国非遗名录</h2>
    <h3 style="color: rgb(96, 146, 43);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;建立非物质文化遗产代表性项目名录，对保护对象予以确认，以便集中有限资源，对体现中华民族优秀传统文化，具有历史、文学、艺术、科学价值的非物质文化遗产项目进行重点保护,是非物质文化遗产保护的重要基础性工作之一。截至2023年12月,中国已经建立起了具有中国特色的国家、省、市、县四级的非物质文化遗产名录体系,四级名录共认定非遗代表性项目10万余项,一大批珍贵、濒危和具有重大价值的非遗得到了有效的保护。</h3>
    &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;<img src="images/7.png" style="height: 220px;width: 300px;" alt="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/9.png" style="height: 220px;width: 300px;"alt="">
    <br>
    <hr>
    <h2 style="color: #944040;">人类非遗中国项目</h2>
    <h3 style="color: rgb(33, 97, 104);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2003年10月17日，联合国教科文组织第32届大会通过了《保护非物质文化遗产公约》。中国于2004年加入《公约》。《公约》第四章“在国际一级保护非物质文化遗产”明确由缔约国成员选举的“政府间保护非物质文化遗产委员会”（以下简称“委员会”）提名、编辑更新人类非物质文化遗产代表作名录，急需保护的非物质文化遗产名录，保护非物质文化遗产的计划、项目和活动（优秀实践名册）。</h3>
    <h3 style="color: rgb(33, 97, 104);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作为履行《公约》缔约国义务的重要内容之一，中国积极推进向联合国教科文组织申报非物质文化遗产名录（名册）项目的相关工作，以促进国际一级保护工作，提高相关非物质文化遗产的可见度。截至2022年12月，中国列入联合国教科文组织非物质文化遗产名录（名册）项目共计43项，总数位居世界第一。其中，人类非物质文化遗产代表作35项（含昆曲、古琴艺术、新疆维吾尔木卡姆艺术和蒙古族长调民歌）；急需保护的非物质文化遗产名录7项；优秀实践名册1项。</h3>
    &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;<img src="images/8.png" style="height: 220px;width: 300px;" alt="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/10.png" style="height: 220px;width: 300px;"alt="">



    <script type="text/javascript">

        var imgShow = document.getElementsByClassName('parent')[0],
            dotList = document.querySelectorAll('.dots >.clearfix > li');
        var btnLeft = document.getElementsByClassName('btnLeft')[0],
            btnRight = document.getElementsByClassName('btnRight')[0];
        var dotLen = dotList.length,
            index = 0; //轮播层的图片索引，0表示第一张

        //圆点显示
        function showRadius() {
            for(var i = 0; i < dotLen; i++) {
                if(dotList[i].className === "on"){
                    dotList[i].className = "off";
                }
            }
            dotList[index].className = "on";
        }

        //向左移动
        btnLeft.onclick = function() {
            index--;
            if(index < 0){  /*第1张向左时，变为第5张*/
                index = 4;
            }
            showRadius();
            var left;
            var imgLeft = imgShow.style.left;
            if(imgLeft === "0px") { /*当是第1张时，每张图片左移，移4张图，位置为-(4*500)*/
                left = -2000;
            }
            else{
                left = parseInt(imgLeft) + 500; /*由于left为负数，每左移一张加500*/
            }
            imgShow.style.left = left + "px";
        }

        //向右移动
        btnRight.onclick = function() {
            index++;
            if(index > 4){  /*第5张向右时，变为第1张*/
                index = 0;
            }
            showRadius();
            var right;
            var imgLeft = imgShow.style.left;
            if(imgLeft === "-2000px") { /*当是第5张时，第1张的位置为0*/
                right = 0;
            }
            else{
                right = parseInt(imgLeft) - 500; /*由于left为负数，每右移一张减500*/
            }
            imgShow.style.left = right + "px";

        }


        for(var i = 0; i < dotLen; i++) {
            /*利用闭包传递索引*/
            (function(i) {
                dotList[i].onclick = function() {
                    var dis = index - i; //当前位置和点击的距离
                    imgShow.style.left = (parseInt(imgShow.style.left) + dis * 500) + "px";
                    index = i; //显示当前位置的圆点
                    showRadius();
                }
            })(i);
        }
    </script>

    <div class="foot" >
        <p>|&nbsp;版权申明&nbsp; |&nbsp;联系我们&nbsp;|&nbsp;友情链接&nbsp;|&nbsp;
        </p>
        <p>艺术专区非物质遗产文化有限公司 版权所有 陕ICP备11032616号</p>
    </div>
</div>

</body>
</html>