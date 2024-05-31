package com.web.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PaperDao {
    // 初始化连接
    public PaperDao() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    // 数据库连接
    public Connection getConnection() throws SQLException {
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/paper_info?characterEncoding=UTF-8",
                "root", "723723");
    }
    
    //查询答案
    public boolean getTitle(int id){
        try (Connection c = getConnection()) {
        	// 查询试卷标题
            String sqlQuery = "SELECT title FROM exam_papers WHERE paper_id = ?";
            try (PreparedStatement preparedStatement = c.prepareStatement(sqlQuery)) {
                preparedStatement.setInt(1, id);
                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    if (resultSet.next())   return true;
                            	
                } catch (SQLException e) {
                	e.printStackTrace();
                }
            } catch (SQLException e) {
            	e.printStackTrace();
            }
            } catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		return false;
        }
    
}
    
