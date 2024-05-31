<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--用于显示正确答案，无法直接运行 --%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>正确答案</title>
    <style type="text/css">
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }

        .container {
            display: flex;
            justify-content: flex-end;
            position: fixed;
            top: 10px;
            right: 10px;
            padding: 10px;
            background-color: #f0f0f0;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            z-index: 1000;
        }

        button {
            padding: 10px;
            font-size: 14px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    #answerContainer {
        background-color: #fff;
        padding: 20px;
        margin-top: 10px;
        display: none;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 5px;
        overflow-y: auto; /* 启用垂直滚动条 */
        max-height: 700px; /* 设置最大高度，超过这个高度将显示滚动条 */
    }

        #answerContainer p {
            margin: 0 0 10px;
        }

        hr {
            border: 0;
            border-top: 1px solid #ddd;
        }
    </style>
</head>
<body>

<div class="container">
    <button onclick="toggleAnswers()">答案</button>
    <div id="answerContainer">
        <c:choose>
            <c:when test="${not empty cA}">
                <c:forEach var="answer" items="${cA}">
                    <p>题号: ${answer.key}&nbsp&nbsp正确答案: ${answer.value}</p>
                    <hr/>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <p>暂无答案数据</p>
            </c:otherwise>
        </c:choose>
    </div>
</div>

<script>
    function toggleAnswers() {
        var answerContainer = document.getElementById('answerContainer');
        answerContainer.style.display = (answerContainer.style.display === 'none' || answerContainer.style.display === '') ? 'block' : 'none';
    }
</script>
</body>
</html>

