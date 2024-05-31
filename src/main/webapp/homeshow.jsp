<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>最近测试记录</title>
    <style type="text/css"> 
div {
        background-color: #fff;
        
    }
    </style>
   
</head>
<body>
<div>
    <h1>最近测试记录</h1>
    <%
        // 从 request 中获取测试记录数组
        double[][] testInfo = (double[][]) request.getAttribute("Testinfo");

        if (testInfo != null && testInfo.length > 0) {
            // 遍历测试记录并显示
    %>
            <table border="1">
                <tr>
                    <th>测试编号</th>
                    <th>听力准确率</th>
                    <th>阅读准确率</th>
                </tr>
    <%
            for (int i = 0; i < testInfo[0].length; i++) {
                
    %>
                <tr>
                    <td><%= i + 1 %></td>
                    <td><%= testInfo[0][i] %></td>
                    <td><%= testInfo[1][i] %></td>
                </tr>
    <%
            }
    %>
            </table>
    <%
        } else {
    %>
            <p>暂无测试记录</p>
    <%
        }
    %>
    </div>
</body>
</html>
