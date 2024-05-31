<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%--用于显示试卷内容，无法直接运行 --%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>试卷页面</title>
    <style>
            body {
            display: flex;
            background-color: #f2f2f2; 
            margin: 0; 
        }

        #sidebar {
            width: 200px;
            background-color: #333;
            color: #fff;
            padding: 20px;
            box-sizing: border-box;
        }

        #content {
            flex: 1;
            padding: 20px;
            box-sizing: border-box;
        }

        #sidebar a {
            display: block;
            margin-bottom: 10px;
            color: #fff;
            text-decoration: none;
            cursor: pointer; /* 添加鼠标指针样式，表明是可点击的 */
        }

        #sidebar a:hover {
            text-decoration: underline; /* 鼠标悬停时显示下划线 */
        }
        h1 {
            text-align: center;
        }
      
        #examPaper {
            width: 220mm; 
            margin: auto; 
            border: 1px solid #000; 
            padding: 20px; 
            box-sizing: border-box; 
            background-color: #fff;
        }
		.submit-button {
		    display: inline-block;
		    padding: 10px 20px;
		    font-size: 16px;
		    font-weight: bold;
		    text-align: center;
		    text-decoration: none;
		    background-color: #007BFF;
		    color: #fff;
		    border: none;
		    border-radius: 5px;
		    cursor: pointer;
		    transition: background-color 0.3s ease;
		    display: block;
    		margin: 0 auto;
		}
		
		/* 鼠标悬停时改变背景颜色 */
		.submit-button:hover {
		    background-color: #0056b3;
		}

    </style>

</head>
<body>


<div id="examPaper">
<h1>${examTitle}</h1>

<form action="AnswersServlet" method="post">

        <!-- Part 1: Writing -->
        <h2>Part 1 Writing (30 minutes)</h2>
        <h2>Directions:</h2>
        <p>${writing}</p>
        <textarea name="answer_1" rows="15" cols="110"></textarea>
		<jsp:include page="music.jsp" />

        <!-- Part 2: Listening Comprehension -->
        <h2>Part 2 Listening Comprehension (30 minutes)</h2>
        <h3>Questions 1 to 4 are based on the conversation you have just heard.</h3>
		    	<c:forEach items="${listeningQuestions}" var="question" begin="0" end="3">
		        <h3>Question ${question.questionNumber}:</h3>
		
		        <label>
           			<input type="radio" name="answer_${question.questionNumber+1}" value="A"> A.${question.optionA}
		        </label>
		        <label>
		            <input type="radio" name="answer_${question.questionNumber+1}" value="B"> B.${question.optionB}
		        </label><br>
		        <label>
		            <input type="radio" name="answer_${question.questionNumber+1}" value="C"> C.${question.optionC}
		        </label>
		        <label>
		            <input type="radio" name="answer_${question.questionNumber+1}" value="D"> D.${question.optionD}
		        </label><br>
		   		</c:forEach>
	    	<h3>Questions 5 to 8 are based on the conversation you have just heard.</h3>
		    	<c:forEach items="${listeningQuestions}" var="question" begin="4" end="7">
		        <h3>Question ${question.questionNumber}:</h3>
		
		        <label>
		            <input type="radio" name="answer_${question.questionNumber+1}" value="A"> A.${question.optionA}
		        </label>
		        <label>
		            <input type="radio" name="answer_${question.questionNumber+1}" value="B"> B.${question.optionB}
		        </label><br>
		        <label>
		            <input type="radio" name="answer_${question.questionNumber+1}" value="C"> C.${question.optionC}
		        </label>
		        <label>
		            <input type="radio" name="answer_${question.questionNumber+1}" value="D"> D.${question.optionD}
		        </label><br>
		   		</c:forEach>
	    <h2>Section B</h2>
	    <h2>Directions:</h2>
    		<p>In this section, you will hear two passages. At the end of each passage, you will hear three or four questions. Both the passage and the questions will be spoken only once. After you hear a question, you must choose the best answer from the four choices marked A), B), C and D). Then mark the corresponding letter on Answer Sheet 1 with a single line through the centre.</p>
    		<h3>Questions 9 to 11 are based on the conversation you have just heard.</h3>
		    	<c:forEach items="${listeningQuestions}" var="question" begin="8" end="10">
		        <h3>Question ${question.questionNumber}:</h3>
		
		        <label>
		            <input type="radio" name="answer_${question.questionNumber+1}" value="A"> A.${question.optionA}
		        </label>
		        <label>
		            <input type="radio" name="answer_${question.questionNumber+1}" value="B"> B.${question.optionB}
		        </label><br>
		        <label>
		            <input type="radio" name="answer_${question.questionNumber+1}" value="C"> C.${question.optionC}
		        </label>
		        <label>
		            <input type="radio" name="answer_${question.questionNumber+1}" value="D"> D.${question.optionD}
		        </label><br>
		   		</c:forEach>
	    	<h3>Questions 12 to 15 are based on the conversation you have just heard.</h3>
		    	<c:forEach items="${listeningQuestions}" var="question" begin="11" end="14">
		        <h3>Question ${question.questionNumber}:</h3>
		
		        <label>
		            <input type="radio" name="answer_${question.questionNumber+1}" value="A"> A.${question.optionA}
		        </label>
		        <label>
		            <input type="radio" name="answer_${question.questionNumber+1}" value="B"> B.${question.optionB}
		        </label><br>
		        <label>
		            <input type="radio" name="answer_${question.questionNumber+1}" value="C"> C.${question.optionC}
		        </label>
		        <label>
		            <input type="radio" name="answer_${question.questionNumber+1}" value="D"> D.${question.optionD}
		        </label><br>
		   		</c:forEach>
	    <h2>Section C</h2>
	    <h2>Directions:</h2>
    		<p>In this section, you will hear three recordings of lectures or talks followed by three or four questions. The recordings will be played only once. After you hear a question, you must choose the best answer from the four choices marked A), B), C) and D). Then mark the corresponding letter on Answer Sheet 1 with a single line through the centre.</p>
    		<h3>Questions 16 to 18 are based on the conversation you have just heard.</h3>
		    	<c:forEach items="${listeningQuestions}" var="question" begin="15" end="17">
		        <h3>Question ${question.questionNumber}:</h3>
		
		        <label>
		            <input type="radio" name="answer_${question.questionNumber+1}" value="A"> A.${question.optionA}
		        </label>
		        <label>
		            <input type="radio" name="answer_${question.questionNumber+1}" value="B"> B.${question.optionB}
		        </label><br>
		        <label>
		            <input type="radio" name="answer_${question.questionNumber+1}" value="C"> C.${question.optionC}
		        </label>
		        <label>
		            <input type="radio" name="answer_${question.questionNumber+1}" value="D"> D.${question.optionD}
		        </label><br>
		   		</c:forEach>
	    	<h3>Questions 19 to 21 are based on the conversation you have just heard.</h3>
		    	<c:forEach items="${listeningQuestions}" var="question" begin="18" end="20">
		        <h3>Question ${question.questionNumber}:</h3>
		        <label>
		            <input type="radio" name="answer_${question.questionNumber+1}" value="A"> A.${question.optionA}
		        </label>
		        <label>
		            <input type="radio" name="answer_${question.questionNumber+1}" value="B"> B.${question.optionB}
		        </label><br>
		        <label>
		            <input type="radio" name="answer_${question.questionNumber+1}" value="C"> C.${question.optionC}
		        </label>
		        <label>
		            <input type="radio" name="answer_${question.questionNumber+1}" value="D"> D.${question.optionD}
		        </label><br>
		   		</c:forEach>
	    	<h3>Questions 22 to 25 are based on the conversation you have just heard.</h3>
		    	<c:forEach items="${listeningQuestions}" var="question" begin="21" end="24">
			        <h3>Question ${question.questionNumber}:</h3>
			
			        <label>
			            <input type="radio" name="answer_${question.questionNumber+1}" value="A"> A.${question.optionA}
			        </label>
			        <label>
			            <input type="radio" name="answer_${question.questionNumber+1}" value="B"> B.${question.optionB}
			        </label><br>
			        <label>
			            <input type="radio" name="answer_${question.questionNumber+1}" value="C"> C.${question.optionC}
			        </label>
			        <label>
			            <input type="radio" name="answer_${question.questionNumber+1}" value="D"> D.${question.optionD}
			        </label><br>
			   		</c:forEach>

        <!-- Part 3: Reading Comprehension -->
        <h2>Part 3 Reading Comprehension (40 minutes)</h2>
        <h2>Section A</h2>
        <h2>Directions:</h2>
        <p>In this section, there is a passage with ten blanks. You are required to select one word for each blank from a list of choices given in a word bank following the passage. Read the passage through carefully before making your choices. Each choice in the bank is identified by a letter. Please mark the corresponding letter for each item on Answer Sheet 2 with a single line through the centre. You may not use any of the words in the bank more than once.</p>
			<% // 获取读取到的文章内容和选项
			StringBuilder A_content = (StringBuilder) request.getAttribute("reading_A");
			Map<String, String> A_options = (Map<String, String>) request.getAttribute("reading_A_Options");
			
			// 将文章内容按下划线切分成数组
			String[] contentArray = A_content.toString().split("____");
			
			// 输出文章内容和选项
			for (int i = 0; i < contentArray.length; i++) {
			    out.print(contentArray[i]); // 输出文章内容
			    %>
   		 		<!-- 输出下拉框 -->
   		 		<%String optionLetter = "A";%>
				<select name="answers_${i+27}" style="width: 100px;">
    			<% for (int j = 0; j < 10; j++) { %>
        		<option value="<%= optionLetter %>"><%=optionLetter+"."+A_options.get(optionLetter) %></option>
        		<% optionLetter = String.valueOf((char) (optionLetter.charAt(0) + 1));
    				} %>
				</select>
			<%}
			%>
	<h2>Section B</h2>
        <h2>Directions:</h2>
        <p>In this section, you are going to read a passage with ten statements attached to it. Each statement contains information given in one of the paragraphs. Identify the paragraph from which the information is derived. You may choose a paragraph more than once. Each paragraph is marked with a letter. Answer the questions by marking the corresponding letter on Answer Sheet 2.</p>
 		 <c:forEach var="i" begin="0" end="12">
        <!-- 输出文章内容 -->
        <p>${reading_B_options[i]}</p>
  			  </c:forEach>
  				<% char[] l = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M'}; %>
		<c:forEach var="j" begin="0" end="9">
   		 <p>${reading_B[j]}</p>

   		 <!-- 输出下拉框 -->
			<select name="answer_${j+37 }" style="width: 100px;">
    		<% for (int i = 0; i < 13; i++) { %>
        		<option value="<%= l[i] %>"><%= l[i] %></option>
    		<% } %>
			</select>
		</c:forEach>
        <h2>Section C</h2>
        <h2>Directions:</h2>
        <p>There are 2 passages in this section. Each passage is followed by some questions or unfinished statements. For each of them, there are four choices marked A), B), C), and D). You should decide on the best choice and mark the corresponding letter on Answer Sheet 2 with a single line through the centre.</p>
			<c:forEach var="n" begin="1" end="2">
   			 <h2>Passage Content:</h2>
    			<p>${Cpassage[n-1]}</p>
    				<c:forEach var="i" begin="0" end="4">
        			<p>${Options[i+(n-1)*5][0]}</p>
        				<c:forEach var="j" begin="1" end="4">
           					 <label>
             				   <input type="radio" name="answer_${i+(n-1)*5+47}" value="${Options[i+(n-1)*5][j]}" />
              						  ${Options[i+(n-1)*5][j]}
				            </label>
				            <br>
				        </c:forEach>
				    </c:forEach>
				</c:forEach>
							
        <!-- Part 4: Translation -->
        <h2>Part 4 Translation (30 minutes)</h2>
        <h2>Directions:</h2>
        <p>For this part, you are allowed 30 minutes to translate a passage from Chinese into English. You should write your answer on Answer Sheet 2.</p>
        <p>${translation}</p>
        <textarea name="answer_57" rows="10" cols="110"></textarea>

        <input type="submit" value="提交">
</form>
</div>    
</body>
</html>

