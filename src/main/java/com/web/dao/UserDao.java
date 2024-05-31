package com.web.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.web.bean.*;
import java.util.*;
public class UserDao {
    // 初始化连接
    public UserDao() {
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

    public int matchInfo(int id,String p) {
    	//查询数据库
    	try (Connection c = getConnection();
            		) {//同时查询账号与密码
    		 String sql = "SELECT * FROM users WHERE user_id = ? AND password = ?";
             try (PreparedStatement ps = c.prepareStatement(sql)) {
                 ps.setInt(1, id);
                 ps.setString(2, p);

                 try (ResultSet rs = ps.executeQuery()) {
                	 if (rs.next()) {
                     //匹配成功，返回1
                         return 1;
                     } else {
                     	//匹配失败，若存在账号，返回-1，若不存在账号，返回0
                		 String sql1= "SELECT * FROM users WHERE user_id = ?";
                		   try (PreparedStatement ps1 = c.prepareStatement(sql1)) {
                               ps.setInt(1, id);
                               ResultSet rs1 = ps.executeQuery();
                               if(rs1.next()) {
                                   return -1;
                               }else
                            	   return 0;
                         }
                     }
                 }
             }
            }catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
		return 0;
    }

    public boolean add(int id,String p) {
    	 // 将数据插入数据库
        try (Connection c = getConnection()) {
            String sql = "INSERT INTO users (user_id, password) VALUES (?, ?)";
            try (PreparedStatement ps = c.prepareStatement(sql)) {
                ps.setInt(1, id);
                ps.setString(2, p);

                // 执行插入操作
                int affectedRows = ps.executeUpdate();

                // 根据受影响的行数判断插入是否成功
                return affectedRows > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // 处理异常或适当记录异常
            return false; // 由于异常导致失败
        }
    }
    
    public boolean addinfo(User u) {
    	//连接数据库插入用户信息
    	 // 将数据插入数据库
        try (Connection c = getConnection()) {
            String sql = "INSERT INTO user_info VALUES (? , ? , ? , ? , ?)";
            try (PreparedStatement ps = c.prepareStatement(sql)) {
                ps.setInt(1, u.getId());
                ps.setString(2, u.getName());
                ps.setString(3, u.getGender());
                ps.setString(4, u.getDept());
                ps.setInt(5, u.getOnline());


                // 执行插入操作
                int affectedRows = ps.executeUpdate();

                // 根据受影响的行数判断插入是否成功
                if( affectedRows > 0)
                	return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // 处理异常或适当记录异常
            return false; // 由于异常导致失败
        }
        return false;
    }
    
    //测试信息插入
    public boolean addtestinfo(Test t) {
    	 try (Connection c = getConnection()) {
             String sql = "INSERT INTO test_info VALUES (? , ? , ? , ? , ?)";
             try (PreparedStatement ps = c.prepareStatement(sql)) {
                 ps.setInt(1,t.getPaperid() );
                 ps.setInt(2, t.getUserid());
                 ps.setString(3, t.getDate());
                 ps.setDouble(4, t.getLa());
                 ps.setDouble(5, t.getRa());


                 // 执行插入操作
                 int affectedRows = ps.executeUpdate();

                 // 根据受影响的行数判断插入是否成功
                 if( affectedRows > 0)
                	 System.out.print("测试信息插入成功！");
                 	return true;
             }
         } catch (SQLException e) {
             e.printStackTrace();
             // 处理异常或适当记录异常
             return false; // 由于异常导致失败
         }
    }
    //查询排行榜信息
    public User[] onlineInfo() {
        try (Connection c = getConnection();
             PreparedStatement psFriend = c.prepareStatement("SELECT * FROM user_info ORDER BY online DESC LIMIT 10;");
            ResultSet rs = psFriend.executeQuery();
        ) {
            List<User> userList = new ArrayList<>();
                while (rs.next()) {
                    userList.add(new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),rs.getInt(5)));
                
            }

            User[] users = userList.toArray(new User[0]);

            return users;

        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
    //更改在线时间
    public void uponline(long time,int id) {
        try (Connection c = getConnection();
             PreparedStatement psFriend = c.prepareStatement("UPDATA TABLE user_info set online = ? where user_id = ?");
        ) {
            psFriend.setInt(1, (int) time);
            psFriend.setInt(2, id);

           psFriend.executeQuery();
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
