<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>测试记录和排行榜</title>
    <style type="text/css"> 


        .content-container {
            display: flex;
            justify-content: space-between;
            padding: 20px;
            border-radius: 8px;
            background-color: #f2f2f2; 
            
        }

        .test-records {
            width: 50%;
            text-align: left;
            background-color: #fff;
        }

        .friends-list {
            width: 50%;
            text-align: left;
            background-color: #fff;
            margin-left: 10px; /* 可以调整左右部分之间的间距 */
        }
    </style>
</head>
<body>
    <jsp:include page="head.jsp" />

    <div class="content-container">
        <div class="test-records">
			<c:import url="/HomeshowServlet" />
        </div>

        <div class="friends-list">
			<c:import url="/OnlineServlet" />
        </div>
    </div>
</body>
</html>
