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

  <img src="images/16.png" alt="" style="height: 350px;width: 850px;">
  <br><br>
  <h2>简单介绍</h2>
  <br>
  <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中国剪纸是一种用剪刀或刻刀在纸上剪刻花纹，用于装点生活或配合其他民俗活动的民间艺术。在中国，剪纸具有广泛的群众基础，交融于各族人民的社会生活，是各种民俗活动的重要组成部分。其传承赓续的视觉形象和造型格式，蕴涵了丰富的文化历史信息，表达了广大民众的社会认知、道德观念、实践经验、生活理想和审美情趣，具有认知、教化、表意、抒情、娱乐、交往等多重社会价值。</h3>
  <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2006年5月20日,剪纸艺术遗产经国务院批准列入第一批国家级非物质文化遗产名录。2009年9月28日至10月2日举行的联合国教科文组织保护非物质文化遗产政府间委员会第四次会议上,中国申报的中国剪纸项目入选“人类非物质文化遗产代表作名录”。</h3>
  <div class="foot" >
    <br>
    <p>|&nbsp;版权申明&nbsp; |&nbsp;联系我们&nbsp;|&nbsp;友情链接&nbsp;|&nbsp;
    </p>
    <p>艺术专区非物质遗产文化有限公司 版权所有 陕ICP备11032616号</p>
  </div>
</div>
</body>
</html>
