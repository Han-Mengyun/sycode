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
      background-color: #504e51;
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
    <!-- <br><br><br><br> -->

    <ul class="navlist">
      <li class="active"><a href="diyizhang.jsp">首页</a></li>
      <li class="active"><a href="jiandanjieshao.jsp">简单介绍</a></li>
      <li class="active"><a href="fenleii.jsp">分类</a></li>
      <li class="active"><a href="jianzhitupian.jsp">剪纸图片</a></li>
    </ul>
  </div>
  <img src="images/11.png" alt="" style="height: 350px;width: 850px;">
  <br><br>
  <h2>历史发展</h2>
  <br>
  <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;剪纸艺术的历史发展可以追溯到中国春秋战国时期,大约在公元前3世纪。最初的剪纸艺术并非在纸张上创作,而是在金箔、皮革、绢帛、树叶等薄片材料上通过雕、镂、剔、刻、剪等多种镂空雕刻技法制成工艺品。</h3>

  <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;随着汉代(公元前206年至公元220年)纸张的出现，剪纸艺术的主要材料由其他薄片材料转变为纸张，这促进了剪纸艺术的普及和发展。由于当时的纸张易腐烂，剪纸作品往往不会被珍藏，坏了还能重新再剪。</h3>

  <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;到了唐代,民间开始流行剪纸招魂的风俗,剪纸艺术开始进入大发展时期。此时的剪纸技艺水平已经相当高,画面构图完整,细腻精致。唐代人还利用剪纸制作印花板,将染料漏印到布匹上,形成美丽的图案。</h3>

  <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;宋代时期，造纸业愈加成熟，为剪纸的普及应用提供了条件。宋代人利用剪纸作陶瓷花样，通过上釉、烧制使陶瓷更精美；民间借鉴剪纸形式，用动物皮制成皮影戏的人物造型；而宋代出现的刮浆印花，其花版纹样就是采用剪纸技法。</h3>

  <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;明清时期，剪纸技艺走向成熟，并达到鼎盛时期。剪纸工艺应用更加广泛，如民间彩灯的花饰、扇面的纹饰、刺绣的花样等，均是利用剪纸作为装饰再经过加工而成的。那时，民间更多的人是将剪纸作为一种家居装饰物，用以美化家居，比如窗花。</h3>


  <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;现代以来，剪纸艺术在中国依然流传广泛，形式和内容不断创新和发展。新中国成立后，艺术家们创作了大量表现社会主义新人新事的新剪纸作品，展现了剪纸艺术的多元化和时代性。</h3>
  <br>
  <div class="foot" >
    <p>|&nbsp;版权申明&nbsp; |&nbsp;联系我们&nbsp;|&nbsp;友情链接&nbsp;|&nbsp;
    </p>
    <p>艺术专区非物质遗产文化有限公司 版权所有 陕ICP备11032616号</p>
  </div>
</div>
</body>
</html>
