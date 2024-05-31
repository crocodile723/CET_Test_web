<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--测试用文件无实际意义 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h1>正确答案</h1>

                <c:when test="${not empty cA}">
                    <c:forEach var="entry" items="${cA}">
                        <p>题号: ${entry.key}&nbsp&nbsp正确答案: ${entry.value}</p>
                        <hr/>
                    </c:forEach>
                </c:when>
</body>
</html>