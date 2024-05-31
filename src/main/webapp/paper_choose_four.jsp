<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <title>选择作答试卷2</title>
    <style>
        /* 设置图片大小 */
        .option-image {
            height: 450px; /* 根据宽度自动调整高度，保持原始宽高比 */
            width: 300px; /* 设置图片宽度为自适应 */
            cursor: pointer; /* 鼠标悬停时显示手型光标 */
        }

        .selected {
            border: 2px solid red; /* 选中状态下的边框颜色 */
        }

        /* 为选项之间增加外边距（margin） */
        label {
            margin-right: 100px; 
            margin-top: 100px;
        }

        /* 提交按钮样式 */
        input[type="submit"] {
            padding: 10px 20px; /* 设置内边距 */
            font-size: 16px; /* 设置字体大小 */
            background-color: #4CAF50; /* 设置背景颜色 */
            color: white; /* 设置字体颜色 */
            border: none; /* 去掉边框 */
            border-radius: 5px; /* 设置边框圆角 */
            cursor: pointer; /* 鼠标悬停时显示手型光标 */
        }

        /* 居中样式 */
        .center {
            text-align: center; /* 文本居中 */
        }
    </style>
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

    <div class="center"> 
        <form action="ModeServlet" method="post">

            <!-- 选项1 -->
            <label for="option1">
                <img src="img/401.jpg" alt="Option 1" class="option-image" onclick="handleOptionSelection('option1')">
                <input type="radio" id="option1" name="selectedOption" value="202306014" style="display:none;">
            </label>

            <!-- 选项2 -->
            <label for="option2">
                <img src="img/402.jpg" alt="Option 2" class="option-image" onclick="handleOptionSelection('option2')">
                <input type="radio" id="option2" name="selectedOption" value="202306024" style="display:none;">
            </label>

            <!-- 选项3 -->
            <label for="option3">
                <img src="img/403.jpg" alt="Option 3" class="option-image" onclick="handleOptionSelection('option3')">
                <input type="radio" id="option3" name="selectedOption" value="202306034" style="display:none;">
            </label>
			<!-- 选项4 -->
            <label for="option4">
                <img src="img/404.png" alt="Option 4" class="option-image" onclick="handleOptionSelection('option4')">
                <input type="radio" id="option4" name="selectedOption" value="20230603412" style="display:none;">
            </label>
            <!-- 选项5 -->
            <label for="option5">
                <img src="img/405.png" alt="Option 5" class="option-image" onclick="handleOptionSelection('option5')">
                <input type="radio" id="option5" name="selectedOption" value="2023060345" style="display:none;">
            </label>
            <!-- 选项6 -->
            <label for="option6">
                <img src="img/406.png" alt="Option 6" class="option-image" onclick="handleOptionSelection('option6')">
                <input type="radio" id="option6" name="selectedOption" value="2023060346" style="display:none;">
            </label>
            <!-- 选项7 -->
            <label for="option7">
                <img src="img/407.png" alt="Option 7" class="option-image" onclick="handleOptionSelection('option7')">
                <input type="radio" id="option7" name="selectedOption" value="2023060347" style="display:none;">
            </label>
            <!-- 选项8 -->
            <label for="option8">
                <img src="img/408.png" alt="Option 8" class="option-image" onclick="handleOptionSelection('option8')">
                <input type="radio" id="option8" name="selectedOption" value="2023060348" style="display:none;">
            </label>
            <!-- 提交按钮 -->
            <br>
            <input type="submit" value="确认选择该套试卷">
        </form>
    </div>
 </body>
</html>