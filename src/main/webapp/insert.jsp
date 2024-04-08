<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2024/3/25
  Time: 20:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>搜索
    </title>
    <link rel="stylesheet" href="login.css">
        <style>
            /* CSS 样式 */
            body {
                font-family: Arial, sans-serif;
                line-height: 1.6;
                background-color: #f8f8f8;
            }

            header {
                background-color: #333;
                color: white;
                padding: 1rem;
                text-align: center;
            }

            .container {
                max-width: 1200px;
                margin: 0 auto;
                padding: 2rem;
            }

            .search-results-header {
                font-size: 1.5em;
                margin-bottom: 1rem;
                text-align: center;
            }

            .search-results-list {
                list-style-type: none;
                padding: 0;
                margin: 0;
            }

            .search-results-list li {
                border-bottom: 1px solid #ddd;
                padding: 1rem 0;
                display: flex;
                justify-content: space-between;
                align-items: baseline;
            }

            .result-title {
                font-weight: bold;
                margin-right: 1rem;
            }

            .result-description {
                color: #666;
                width: 60%;
            }

            @media (max-width: 768px) {
                .search-results-list li {
                    flex-direction: column;
                }

                .result-title,
                .result-description {
                    width: 100%;
                }
            }
        </style>
    </head>
<body>
<header>
    <h1>非物质文化遗产搜索结果</h1>
    <!-- 这里可以放搜索框，但这里仅演示结果页面 -->
</header>

<div class="container">
    <div class="search-results-header">
        搜索结果
    </div>

    <ul class="search-results-list">
        <c:forEach var="item" items="${results}">
            <a href="insertshow?itemId=${item.id}">
                <div class="result-title"><p>ID: ${item.id} , 非遗名称: ${item.fyName}, 非遗信息: ${item.fyImg}</p></div>
            </a>
        </c:forEach>
    </ul>
</div>

<!-- 可以在此处添加分页组件或其他辅助功能 -->
</body>

</html>

