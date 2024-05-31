package com.web.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;
import java.util.HashMap;

public class AnswerDao {
    // 初始化连接
    public AnswerDao() {
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
    public Map<Integer,String> getAnswers(int id){
    	
        Map<Integer, String> correctAnswers = new HashMap<>();
        try (Connection c = getConnection()) {
        String sql = "SELECT * FROM answers WHERE paper_id = ?";
        try (PreparedStatement statement = c.prepareStatement(sql)) {    
        	statement.setInt(1, id);
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    int answerId = resultSet.getInt(2);
                    String answer = resultSet.getString("answer");
                    correctAnswers.put(answerId, answer);
                }
                return correctAnswers;

            }
        }
        
    } catch (SQLException e) {
        e.printStackTrace();
    }
    
    return correctAnswers;
    }

}
