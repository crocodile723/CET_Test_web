package com.web.servlet;
import com.web.dao.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class HomeshowServlet
 */
@WebServlet("/HomeshowServlet")
public class HomeshowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeshowServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取session
		int user = 0;
        HttpSession session = request.getSession(false);
		if (session != null) {
			user = Integer.parseInt((String) session.getAttribute("username"));
		}else  response.getWriter().append("暂无测试记录");

		//获取前10次准确率
		InfoDao d = new InfoDao();
		double[][] a = d.top10info(user);
		//转发jsp
		request.setAttribute("Testinfo", a);
        request.getRequestDispatcher("homeshow.jsp").forward(request, response);
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
