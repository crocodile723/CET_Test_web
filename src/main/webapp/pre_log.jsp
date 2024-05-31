<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--请不要运行其它文件，运行此文件 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>“不刷题”首页</title>
 <style>
        body {
            margin: 0;
            padding: 0;
            background-image: url('img/首页.jpg'); /* 背景图片的路径 */
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            color: white;
        }

        .content {
            text-align: center;
        }

        .btn {
            padding: 10px 20px;
            background-color: #3498db; /* 按钮背景颜色 */
            color: white;
            text-decoration: none;
            font-size: 18px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #2980b9; /* 鼠标悬停时的背景颜色 */
        }
    </style>
</head>
<body>

    <div class="content">
        <h2>Welcome to “不刷题”</h2>
        <!-- 按钮 -->
        <a href="login.jsp" class="btn">点击登录</a>
        <p>登录以显示个人信息</p>
        
    </div>    
   
</body>
</html>