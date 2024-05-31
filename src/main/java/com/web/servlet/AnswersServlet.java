package com.web.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web.bean.Test;
import com.web.dao.AnswerDao;
import com.web.dao.UserDao;

/**
 * Servlet implementation class AnswersServlet
 */
@WebServlet("/AnswersServlet")
public class AnswersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AnswersServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 获取表单提交的答案
        Map<Integer, String> answers = new HashMap<>();
        
        for (int i = 1; i <= 57; i++) {
            String answer = request.getParameter("answer_" + i);
            answers.put(i, answer);
        }

	     
        //获取正确答案
	     Map<Integer, String> correctAnswers = new HashMap<>();
	     AnswerDao d = new AnswerDao();
	     //获取session
	     HttpSession session = request.getSession(false);
		 int user = Integer.parseInt((String) session.getAttribute("username"));
	     int paper_id = (int)session.getAttribute("paper_id");
	     correctAnswers = d.getAnswers(paper_id);
	     
	     //计算准确率
	     double l =calculateAccuracy(answers,correctAnswers,2,26);
	     double r =calculateAccuracy(answers,correctAnswers,27,56);
	     //创建Test对象
	     // 获取当前日期
	     Date currentDate = new Date();
	     SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	     String formattedDate = dateFormat.format(currentDate);
	     Test t = new Test(paper_id,user,l,r,formattedDate); 
	     //插入数据库
	     UserDao ud = new UserDao();
	     ud.addtestinfo(t);

         // 将准确率放入请求属性
         request.setAttribute("listeningAccuracy", l);
         request.setAttribute("readingAccuracy", r);

         // 转发到 result.jsp
         RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
         dispatcher.forward(request, response);

	     
	 }

	 

	 private double calculateAccuracy(Map<Integer, String> userAnswers, Map<Integer, String> correctAnswers, int start, int end) {
	     int correctCount = 0;
	     int totalQuestions = end - start + 1;

	     for (int i = start; i <= end; i++) {
	         String userAnswer = userAnswers.get(i);
	         String correctAnswer = correctAnswers.get(i);

	         if (correctAnswer != null && correctAnswer.equals(userAnswer)) {
	             correctCount++;
	         }
	     }

	     return (double) correctCount / totalQuestions * 100;
	 }
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
