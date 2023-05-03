package code.dao;

import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import code.model.Admin;


public class AdminDao {
	private Connection con;

	private String query;
    private PreparedStatement pst;
    private ResultSet rs;

	public AdminDao(Connection con) {
		this.con = con;
	}
	
	public Admin adminLogin(String email, String password) {
		Admin user = null;
        try {
            query = "select * from Admin where email=? and password=?";
           // query = "insert into user1(name,email,password) values(?,?,?)";
            pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, password);
       
            rs = pst.executeQuery();
            if(rs.next()){
            	user = new Admin();
            	user.setId(rs.getInt("id"));
            	user.setName(rs.getString("name"));
            	user.setEmail(rs.getString("email"));
            }
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }
        return user;
    }
}
