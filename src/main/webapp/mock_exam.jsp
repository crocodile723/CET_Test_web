<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>模拟考试</title>
    <script>
        var timer;
        var seconds = 0;

        function startTimer() {
            timer = setInterval(updateTimer, 1000);
        }

        function updateTimer() {
            seconds++;
            var minutes = Math.floor(seconds / 60);
            var remainingSeconds = seconds % 60;

            document.getElementById("timer").innerHTML =
                (minutes < 10 ? "0" : "") + minutes + ":" + (remainingSeconds < 10 ? "0" : "") + remainingSeconds;
                if (minutes === 200) {
                    clearInterval(timer); // 停止计时器
                    document.getElementById("timer").innerHTML = "考试结束,请点击提交";

                }
        }

        // 在页面加载完成后开始计时器
        window.onload = function () {
            startTimer();
        };
    </script>
    <style type="text/css">
        div {
            text-align: left;
            font-size: 20px; /* 设置字体大小为 20 像素，可以根据需要调整 */
        }
    </style>
</head>
<body>
    <c:import url="/PaperServlet" />
    <div>
        <p>考试已经进行：<span id="timer">00:00</span></p>
    </div>
</body>
</html>

