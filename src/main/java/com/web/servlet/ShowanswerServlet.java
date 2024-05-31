package com.web.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web.dao.AnswerDao;

/**
 * Servlet implementation class ShowanswerServlet
 */
@WebServlet("/ShowanswerServlet")
public class ShowanswerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowanswerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     //获取正确答案
	     Map<Integer, String> correctAnswers = new HashMap<>();
	     AnswerDao d = new AnswerDao();
	     //获取session
	     HttpSession session = request.getSession(false);
	     int paper_id = Integer.parseInt((String)session.getAttribute("paper_id"));
	     correctAnswers = d.getAnswers(paper_id);
	     request.setAttribute("cA", correctAnswers);
	     request.getRequestDispatcher("correctA_show.jsp").forward(request, response);
         //request.getRequestDispatcher("temp.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
