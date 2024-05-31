<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录/注册</title>
<style>
    body {
        font-family: Verdana, Geneva, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 88vh;
    }

    .login-container {
        background-color: #fff;
        padding: 70px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        height: 400px;
        width: 250px;
    }

    .login-container h1 {
        text-align: center;
        margin-bottom: 30px;
    }

    .login-form {
        display: flex;
        flex-direction: column;
    }

    .login-form label {
        font-weight: bold;
        margin-bottom: 5px;
    }

    .login-form input {
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 3px;
        font-size: 16px;
    }

    .login-form input[type="submit"] {
        background-color: #007BFF;
        color: #fff;
        font-weight: bold;
        cursor: pointer;
    }

    .login-form input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
    <jsp:include page="head.jsp" />

    <div class="container">
        <div class="login-container">
            <h1>用户登录</h1>
            <form class="login-form" action="LoginServlet" method="POST">
                <label for="username">账号:</label>
                <input type="text" id="username" name="username" required>

                <label for="password">密码:</label>
                <input type="password" id="password" name="password" required>

                <input type="submit" value="登录">
                <p>未注册时，点击登录自动注册</p>
            </form>
        </div>
    </div>
    <jsp:include page="footer.jsp" />
</body>
</html>
