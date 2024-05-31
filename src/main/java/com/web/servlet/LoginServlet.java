package com.web.servlet;

import java.io.IOException;
import com.web.dao.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 获取用户输入信息
        // 设置请求和响应的字符编码
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");

        // 从请求中获取用户名和密码参数
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // 检查用户名和密码是否非空
        if (username != null && password != null) {
        	 // 验证用户名是否为数字
            if (!username.matches("\\d+")) {
                // 用户名包含非数字字符，返回错误提示
                response.getWriter().append("账号只能是数字，即将返回。");
                response.setHeader("Refresh", "3;URL=login.jsp");
                return; // 结束处理
            }

            // 与数据库信息匹配
            UserDao userDao = new UserDao();
            
            // 调用 matchInfo 方法进行用户登录
            int matchSuccess = userDao.matchInfo(Integer.parseInt(username), password);

            if (matchSuccess == 1) {
                // 存在账号，密码匹配
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                session.setAttribute("loginTime", System.currentTimeMillis());
                // 提醒登录成功
                response.getWriter().append("登录成功，欢迎" + username + "，即将跳转至主页。");

                // 设置跳转
                response.setHeader("Refresh", "5;URL=homepage.jsp");
            }else if(matchSuccess == -1) { 
            	// 提醒密码错误
                response.getWriter().append("账号或密码错误，即将返回。");

                // 设置跳转
                response.setHeader("Refresh", "3;URL=login.jsp");
            }else {
                // 账号不存在，进行注册
                boolean registerSuccess = userDao.add(Integer.parseInt(username), password);

                if (registerSuccess) {
                    // 注册成功，提醒并跳转至注册页面
                	HttpSession session = request.getSession();
                    session.setAttribute("username", username);
                    session.setAttribute("loginTime", System.currentTimeMillis());
                    response.getWriter().append("注册成功，即将跳转至信息设置页面。");
                    response.setHeader("Refresh", "5;URL=register.jsp");
                } else {
                	// 提醒密码错误
                    response.getWriter().append("账号已存在或密码错误，即将返回。");

                    // 设置跳转
                    response.setHeader("Refresh", "3;URL=login.jsp");
                }
            }
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
