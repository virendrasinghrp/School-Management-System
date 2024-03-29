package com.login.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.login.bean.LoginBean;
import com.login.util.DBConnection;

public class LoginDao {
	public String authenticateUser(LoginBean loginBean)
	{
	    String userName = loginBean.getUsername();
	    String password = loginBean.getPassword();
	 
	    Connection con = null;
	    Statement statement = null;
	    ResultSet resultSet = null;
	 
	    String userNameDB = "";
	    String passwordDB = "";
	    String roleDB = "";
	 
	    try
	    {
	        con = DBConnection.createConnection();
	        statement = con.createStatement();
	        resultSet = statement.executeQuery("select username,password,role from sms_users");
	 
	        while(resultSet.next())
	        {
	            userNameDB = resultSet.getString("username");
	            passwordDB = resultSet.getString("password");
	            roleDB = resultSet.getString("role");
	 
	            if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("SUPER-ADMIN"))
	            	return "Super_Admin_Role";
	            else if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("ADMIN"))
		            return "Admin_Role";
	            else if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("TEACHER"))
	            	return "Teacher_Role";
	            else if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("STUDENT"))
	            	return "Student_Role";
	        }
	    }
	    catch(SQLException e)
	    {
	        e.printStackTrace();
	    }
	    return "Invalid user credentials";
	}

}
