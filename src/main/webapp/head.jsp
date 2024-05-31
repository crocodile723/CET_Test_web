<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--用于显示首页导航栏，无法直接运行 --%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
body {
    margin: 0;
    padding: 0;
}

.header {
    width: 100%;
    height: 50px; /* 根据需要调整高度 */
    background-color: rgb(61, 145, 84);
    display: flex;
    align-items: center;
}

.logo {
    width: 110px; /* 设置 logo 宽度 */
    height: auto; /* 保持宽高比例 */
    margin-left: 20px; /* 为 logo 添加间距 */
}

#dh ul {
    width: 70%; /* 调整导航宽度 */
    margin: 0 auto; /* 导航居中 */
    padding: 0;
    list-style: none;
    display: flex;
    justify-content: space-between;
}

#dh ul li {
    height: 50px; /* 与头部高度匹配 */
    width: 150px;
    font-size: 1.3em; /* 调整字体大小 */
}

#dh ul li a {
    text-align: center;
    color: white;
    text-decoration: none;
    display: flex;
    flex-direction: row;
  	align-items: center;
    justify-content: center;
    height: 100%;
    padding: 0 10px; /* 调整内边距 */
    border-bottom: 3px solid transparent;
    transition: border-bottom-color 0.3s ease-in-out;
}

#dh ul li a:hover {
    border-bottom-color: rgb(16, 4, 28);
    background-color: rgb(37, 84, 155);
}

</style>
<title>顶部导航</title>
</head>
<body>
<div class="header">
    <img src="img/icon.jpg" alt="" class="logo">
    <div id="dh">
        <ul>
            <li><a href="homepage.jsp" class="a">首页</a></li>
            <li><a href="papertype_choose.jsp" class="a">学习</a></li>
			<li><a href="LogoutServlet" class="a">退出登录</a></li>
            
        </ul>
    </div>
</div>

</body>
</html>
