<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">    
<title>选择作答试卷1</title>
<style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
.center-content {
    text-align: center;
    margin: 20px auto;
}

      ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
    text-align: center; /* 使得 li 在水平方向居中 */
	}

	li {
    display: inline-block; /* 修改为 inline-block，使得 li 在水平方向排列 */
	}

        li a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        li a:hover {
            background-color: #111;
        }

        #content {
            margin-top: 20px;
        }
    </style>
<script>
        function loadContent(page) {
            // 使用 Ajax 加载内容
            var xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function () {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    document.getElementById('content').innerHTML = xhr.responseText;
                }
            };

            // 根据导航栏选择加载不同的 JSP 页面
            if (page === 'cet4') {
                xhr.open('GET', 'paper_choose_four.jsp', true);
            } else if (page === 'cet6') {
                xhr.open('GET', 'paper_choose_six.jsp', true);
            }else  xhr.open('GET', 'homepage.jsp', true);


            xhr.send();
        }

        // 在页面加载时，默认加载英语四级页面
        document.addEventListener("DOMContentLoaded", function() {
            loadContent('cet4');
        });
    </script>
 <script>
        // JavaScript函数，处理单选按钮的状态变化事件
        function handleOptionSelection(optionId) {
            // 获取选中的单选按钮
            var selectedRadioButton = document.getElementById(optionId);

            // 获取所有图片元素
            var images = document.getElementsByClassName('option-image');

            // 移除所有图片的选中样式
            for (var i = 0; i < images.length; i++) {
                images[i].classList.remove('selected');
            }

            // 添加选中样式到相应的图片
            if (selectedRadioButton.checked) {
                var selectedImage = document.querySelector('[for="' + optionId + '"] .option-image');
                if (selectedImage) {
                    selectedImage.classList.add('selected');
                }
            }
        }
    </script>
</head>
<body>

    <div class="center—content"> <!-- 包裹整体内容使其居中 -->
        <div>
            <!-- 导航栏 -->
            <ul>
                <li><a href="javascript:void(0);" onclick="loadContent('cet4')">英语四级</a></li>
                <li><a href="javascript:void(0);" onclick="loadContent('cet6')">英语六级</a></li>
				<li><a href="homepage.jsp" >《--返回首页</a></li>
                
            </ul>
        </div>
	
        <!-- 刷新内容的div -->
        <div id="content">
            <!-- 默认加载的内容，可以是初始页面或其他内容 -->
            <jsp:include page="paper_choose_four.jsp" />
        </div>
    </div>

</body>
</html>