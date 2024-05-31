<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.web.bean.User" %>
<%@ page import="java.util.Arrays" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>好友列表</title>
    <style type="text/css"> 
        div {
            background-color: #fff;
        }
    </style>
</head>
<body>
    <div>
        <h1>在线时长TOP10排行榜</h1>

                <c:forEach var="user" items="${onlineinfo}">
                    <p>ID: ${user.id}&nbsp&nbsp&nbsp姓名: ${user.name}&nbsp&nbsp&nbsp 性别: ${user.gender}&nbsp&nbsp&nbsp 年级: ${user.dept} &nbsp&nbsp&nbsp 在线时长: ${user.online} 分钟</p>
                   
                    <hr/>
                </c:forEach>

          

    </div>
</body>
</html>