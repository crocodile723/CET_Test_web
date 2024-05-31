package com.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.web.dao.*;
import com.web.bean.User;
/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 // 设置请求和响应的字符编码
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
		//获取session
        HttpSession session = request.getSession(false);

		if (session != null) {
			int user = Integer.parseInt((String) session.getAttribute("username"));
			if (user != 0) {
			//获取传输数据
			String name = request.getParameter("nickname");
			String gender = request.getParameter("gender");
			String grade = request.getParameter("grade");
			//创建User
			User u = new User(user,name,gender,grade,0);
			//插入数据库
			UserDao d = new UserDao();
			if(d.addinfo(u)) {
                response.getWriter().append("信息设置成功，将跳转至首页");
                response.setHeader("Refresh", "5;URL=homepage.jsp");

			}else {
				  response.getWriter().append("信息设置失败，即将返回。");
	                response.setHeader("Refresh", "5;URL=register.jsp");
			}
			
			}else {
                response.getWriter().append("账号登录失败，即将返回。");
                response.setHeader("Refresh", "5;URL=login.jsp");
			}
		}else {
		      response.getWriter().append("账号登录失败，即将返回。");
              response.setHeader("Refresh", "5;URL=pre_log.jsp");
		}
			
		//插入数据库，成功则跳转至首页
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
