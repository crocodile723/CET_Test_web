<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>考试结果</title>
    <!-- 这里可以添加你的样式链接或内联样式 -->
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        .result-container {
            width: 50%;
            margin: 0 auto;
        }

        .result {
            margin-bottom: 20px;
        }

        .btn {
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-top: 20px;
            cursor: pointer;
        }
    </style>
</head>
<body>

<div class="result-container">
    <h2>考试结果</h2>

    <div class="result">
        <h3>听力准确率: <%= request.getAttribute("listeningAccuracy") %> %</h3>
        <h3>阅读准确率: <%= request.getAttribute("readingAccuracy") %> %</h3>
    </div>

    <a href="index.jsp" class="btn">返回首页</a>
</div>

</body>
</html>
