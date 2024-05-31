<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--用于显示首页，无法直接运行 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>“不刷题”首页</title>
<style type="text/css">
    /* 将嵌套的元素设为块级元素，使其垂直排列 */
    body {
        display: block;
        background-color: #f2f2f2; 
    }
</style>
</head>
<body>

    <jsp:include page="info_show.jsp" />
    <jsp:include page="papertype_choose.jsp" />
    <jsp:include page="footer.jsp" />
</body>
</html>
