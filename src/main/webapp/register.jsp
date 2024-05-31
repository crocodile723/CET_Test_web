<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>用户信息设置</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .registration-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            width: 100%;
            text-align: center;
            box-sizing: border-box;
        }

        .registration-container h2 {
            margin-bottom: 20px;
        }

        .input-group {
            margin-bottom: 15px;
            text-align: left;
        }

        .input-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .input-group input,
        .input-group select {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            margin-bottom: 10px;
        }

        .input-group input[type="radio"] {
            margin-top: 5px;
        }

        .input-group .radio-group {
            display: flex;
            justify-content: space-between;
        }

        .registration-container input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            font-weight: bold;
            padding: 10px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            width: 100%;
        }

        .registration-container input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <div class="registration-container">
        <h2>信息设置</h2>
        <form action="RegisterServlet" method="POST">
            <div class="input-group">
                <label for="nickname">昵称:</label>
                <input type="text" id="nickname" name="nickname" required>
            </div>

            <div class="input-group">
                <label>性别:</label>
                <div class="radio-group">
                    <input type="radio" id="male" name="gender" value="男" required>
                    <label for="male">男</label>

                    <input type="radio" id="female" name="gender" value="女">
                    <label for="female">女</label>

                    <input type="radio" id="other" name="gender" value="Other">
                    <label for="other">其它</label>
                </div>
            </div>

            <div class="input-group">
                <label>年级:</label>
                <div class="radio-group">
                    <input type="radio" id="freshman" name="grade" value="Freshman" required>
                    <label for="freshman">大一</label>

                    <input type="radio" id="sophomore" name="grade" value="Sophomore">
                    <label for="sophomore">大二</label>

                    <input type="radio" id="junior" name="grade" value="Junior">
                    <label for="junior">大三</label>

                    <input type="radio" id="senior" name="grade" value="Senior">
                    <label for="senior">大四</label>

                    <input type="radio" id="otherGrade" name="grade" value="OtherGrade">
                    <label for="otherGrade">其它</label>
                </div>
            </div>

            <div class="input-group">
                <input type="submit" value="完成基本信息设置">
            </div>
        </form>
    </div>

</body>
</html>
