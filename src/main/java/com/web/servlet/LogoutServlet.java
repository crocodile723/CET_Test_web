package com.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.web.dao.*;
/**
 * Servlet implementation class LogoutServlet
 */
@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogoutServlet() {
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

		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");

		// 判断用户是否已登录
		if (username != null && !username.isEmpty()) {
		    // 用户注销时记录注销时间
		    long loginTime = (long) session.getAttribute("loginTime");
		    int id = Integer.parseInt(username);

		    // 计算在线时长
		    long logoutTime = System.currentTimeMillis();
		    long onlineDuration = logoutTime - loginTime;

		    UserDao d = new UserDao();
		    
		    // 更新在线时长
		    d.uponline(onlineDuration, id);
		    
		    response.getWriter().append("退出登录成功，即将返回。");
		    response.setHeader("Refresh", "3;URL=pre_log.jsp");
		} else {
		    // 用户未登录，显示提示信息
		    response.getWriter().append("无登录信息，即将返回。");
		    response.setHeader("Refresh", "3;URL=pre_log.jsp");
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
