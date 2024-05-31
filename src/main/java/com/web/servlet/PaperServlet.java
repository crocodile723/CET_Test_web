package com.web.servlet;
import com.web.bean.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.*;
import com.web.dao.*;
/**
 * Servlet implementation class PaperServlet
 */
@WebServlet("/PaperServlet")
public class PaperServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaperServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取session
	     HttpSession session = request.getSession(false);
	     int paper_id = Integer.parseInt((String)session.getAttribute("paper_id"));
	     PaperDao d = new PaperDao();
	     if(d.getTitle(paper_id)) {
        try (PrintWriter out = response.getWriter()) {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/paper_info";
            String username = "root";
            String password = "723723";

            try (Connection connection = DriverManager.getConnection(url, username, password)) {
                System.out.println("数据库连接成功!");

                // 查询试卷标题
                String sqlQuery = "SELECT title FROM exam_papers WHERE paper_id = ?";
                try (PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery)) {
                    preparedStatement.setInt(1, paper_id);

                    try (ResultSet resultSet = preparedStatement.executeQuery()) {
                        if (resultSet.next()) {
                            // 存储试卷标题为字符串
                            String examTitle = resultSet.getString("title");
                            request.setAttribute("examTitle", examTitle);

                            // 查询写作题目
                            String sqlWriting = "SELECT writing FROM writing WHERE paper_id = ?";
                            try (PreparedStatement writingStatement = connection.prepareStatement(sqlWriting)) {
                                writingStatement.setInt(1, paper_id);

                                try (ResultSet writingResultSet = writingStatement.executeQuery()) {
                                    // 存储写作题目为字符串
                                    StringBuilder writingResult = new StringBuilder();
                                    while (writingResultSet.next()) {
                                        writingResult.append(writingResultSet.getString("writing")).append("\n");
                                    }
                                    request.setAttribute("writing", writingResult.toString());
                                }
                            }
                            
                            //查询听力数据
                            String sqlL = "SELECT * FROM listening WHERE paper_id = ?";
                            try (PreparedStatement writingStatement = connection.prepareStatement(sqlL)) {
                                writingStatement.setInt(1, paper_id);

                                try (ResultSet ListeningResultSet = writingStatement.executeQuery()) {
                                    // 存储听力内容
                                	List<Listening> listeningQuestions = new ArrayList<>();

                                	try (ResultSet listeningResultSet = writingStatement.executeQuery()) {
                                	    while (listeningResultSet.next()) {
                                	        Listening question = new Listening();
                                	        question.setQuestionNumber(listeningResultSet.getInt("t_id"));
                                	        question.setOptionA(listeningResultSet.getString("A"));
                                	        question.setOptionB(listeningResultSet.getString("B"));
                                	        question.setOptionC(listeningResultSet.getString("C"));
                                	        question.setOptionD(listeningResultSet.getString("D"));

                                	        listeningQuestions.add(question);
                                	    }
                                	}
                                	
                                	// 将 List 存储在 request 对象中
                                	request.setAttribute("listeningQuestions", listeningQuestions);
                                    
                                }
                            }

                            //查询阅读SectionA
                            String sqlA = "SELECT * FROM readinga WHERE paper_id = ?";
                            try (PreparedStatement AStatement = connection.prepareStatement(sqlA)) {
                                AStatement.setInt(1, paper_id);

                                try (ResultSet AResultSet = AStatement.executeQuery()) {
                                    // 存储文章与选项
                                    StringBuilder A_content = new StringBuilder();
                                	Map<String,String> A_options = new HashMap<>();

                                    while (AResultSet.next()) {
                                        A_content.append(AResultSet.getString("content")).append("\n");
                                        A_options.put("A", AResultSet.getString("A"));
                                        A_options.put("B", AResultSet.getString("B"));
                                        A_options.put("C", AResultSet.getString("C"));
                                        A_options.put("D", AResultSet.getString("D"));
                                        A_options.put("E", AResultSet.getString("E"));
                                        A_options.put("F", AResultSet.getString("F"));
                                        A_options.put("H", AResultSet.getString("H"));
                                        A_options.put("I", AResultSet.getString("I"));
                                        A_options.put("J", AResultSet.getString("J"));
                                        A_options.put("K", AResultSet.getString("K"));
                                        A_options.put("L", AResultSet.getString("L"));
                                        A_options.put("M", AResultSet.getString("M"));
                                        A_options.put("N", AResultSet.getString("N"));
                                        A_options.put("O", AResultSet.getString("O"));
                                    }
                                    request.setAttribute("reading_A", A_content);
                                    request.setAttribute("reading_A_Options", A_options);

                                }
                            }
                          //查询阅读SectionB
                            String sqlB = "SELECT * FROM readingb WHERE paper_id = ?";
                            try (PreparedStatement AStatement = connection.prepareStatement(sqlB)) {
                                AStatement.setInt(1, paper_id);

                                try (ResultSet BResultSet = AStatement.executeQuery()) {
                                	 // 初始化StringBuilder数组
                                    StringBuilder[] B_content = new StringBuilder[13];
                                    StringBuilder[] B_options = new StringBuilder[10];
                                    for (int i = 0; i < 13; i++) {
                                        B_content[i] = new StringBuilder();
                                    }
                                    for (int i = 0; i < 10; i++) {
                                        B_options[i] = new StringBuilder();
                                    }

                                    while (BResultSet.next()) {
                                        // 从结果集中读取数据并填充StringBuilder数组
                                        for (int i = 0; i < 13; i++) {
                                            B_content[i].append(BResultSet.getString(2+i)).append("\n");
                                        }
                                        for (int i = 0; i < 10; i++) {
                                            B_options[i].append(BResultSet.getString(15+i)).append("\n");
                                        }
                                    }

                                    request.setAttribute("reading_B_options", B_content);
                                    request.setAttribute("reading_B", B_options);

                                }
                            }
                        
                         // 查询阅读c
                            String sqlC = "SELECT content FROM readingc_p WHERE paper_id = ? AND passage_id = ?";
                            StringBuilder[] CResult = new StringBuilder[2];
                            StringBuilder[][] Options = new StringBuilder[10][5];

                            try (PreparedStatement writingStatement = connection.prepareStatement(sqlC)) {
                                writingStatement.setInt(1, paper_id);
                                for (int i = 1; i < 3; i++) {
                                    writingStatement.setInt(2, i);

                                    // 初始化 CResult 的每个元素
                                    CResult[i - 1] = new StringBuilder();

                                    try (ResultSet CResultSet = writingStatement.executeQuery()) {
                                        while (CResultSet.next()) {
                                            CResult[i - 1].append(CResultSet.getString("content")).append("\n");
                                        }
                                    }

                                    // 查询选项
                                    String sqlO = "SELECT * FROM readingc_o WHERE paper_id = ? AND passage_id = ? AND t_id = ?";
                                    try (PreparedStatement OStatement = connection.prepareStatement(sqlO)) {
                                        OStatement.setInt(1, paper_id);
                                        OStatement.setInt(2, i);
                                        for (int j = 0; j < 5; j++) {
                                            OStatement.setInt(3, j + 1);

                                            // 初始化 Options 的每个元素
                                            Options[(i - 1) * 5 + j][0] = new StringBuilder();
                                            Options[(i - 1) * 5 + j][1] = new StringBuilder();
                                            Options[(i - 1) * 5 + j][2] = new StringBuilder();
                                            Options[(i - 1) * 5 + j][3] = new StringBuilder();
                                            Options[(i - 1) * 5 + j][4] = new StringBuilder();

                                            try (ResultSet OResultSet = OStatement.executeQuery()) {
                                                while (OResultSet.next()) {
                                                    Options[(i - 1) * 5 + j][0].append(OResultSet.getString("content")).append("\n");
                                                    Options[(i - 1) * 5 + j][1].append(OResultSet.getString("A")).append("\n");
                                                    Options[(i - 1) * 5 + j][2].append(OResultSet.getString("B")).append("\n");
                                                    Options[(i - 1) * 5 + j][3].append(OResultSet.getString("C")).append("\n");
                                                    Options[(i - 1) * 5 + j][4].append(OResultSet.getString("D")).append("\n");
                                                }
                                            }
                                        }
                                    }
                                }
                                request.setAttribute("Cpassage", CResult);
                                request.setAttribute("Options", Options);
                            }

                         // 查询翻译题目
                            String sqlT = "SELECT content FROM translation WHERE paper_id = ?";
                            try (PreparedStatement writingStatement = connection.prepareStatement(sqlT)) {
                                writingStatement.setInt(1, paper_id);

                                try (ResultSet TResultSet = writingStatement.executeQuery()) {
                                    // 存储写作题目为字符串
                                    StringBuilder TResult = new StringBuilder();
                                    while (TResultSet.next()) {
                                        TResult.append(TResultSet.getString("content")).append("\n");
                                    }
                                    request.setAttribute("translation", TResult.toString());
                                }
                            }
                        } else {
                            out.println("<p>抱歉,该试卷暂无数据</p>");
                        }
                    }
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
            //设置session
            HttpSession session1 = request.getSession();
            session1.setAttribute("paper_id", paper_id);
            // 转发到JSP页面
            //request.getRequestDispatcher("temp.jsp").forward(request, response);
            request.getRequestDispatcher("exam_paper.jsp").forward(request, response);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
	     }else {
             response.getWriter().append("该试卷暂无数据，请点击");
             response.getWriter().append("<br><a href=\"homepage.jsp\">返回首页。</a></p>");

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
