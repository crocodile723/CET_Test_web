package com.web.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class InfoDao {
	// 初始化连接
    public InfoDao() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    // 数据库连接
    public Connection getConnection() throws SQLException {
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/userinfo?characterEncoding=UTF-8",
                "root", "723723");
    }
    //查询近10次准确率
    public double[][] top10info(int id) {
    	double[][] a = new double[2][10];
    	double[] l = new double[10];
        double[] r = new double[10];
        try (Connection c = getConnection()) {
            String sql = "SELECT reading, listening, date FROM test_info WHERE user_id = ? ORDER BY date DESC LIMIT 10;";
            try (PreparedStatement ps = c.prepareStatement(sql)) {
                ps.setInt(1, id);
                try (ResultSet rs = ps.executeQuery()) {
                    
                    int i = 0;
                    while (rs.next()) {
                        l[i] = rs.getDouble("listening");
                        r[i] = rs.getDouble("reading");
                        i++;
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        for(int i = 0 ;i < 20;i++) {
        	if(i<10) {
        		a[0][i]=l[i];
        	}else {
        		a[1][i-10] = r[i-10];
        	}
        }
        return a;
    }

}
