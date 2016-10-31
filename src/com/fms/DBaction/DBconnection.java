package com.fms.DBaction;

import java.sql.DriverManager;
import java.sql.Connection;

public class DBconnection {
	private static Connection conn = null;
	
	public static Connection Conn() throws Exception {
		try{
	        String URL = "jdbc:mysql://localhost:3306/fmsdb";
	        Class.forName("com.mysql.jdbc.Driver");
	        conn = DriverManager.getConnection(URL, "root", "wxf201314");
		}catch(Exception e){
			e.printStackTrace();
		}
		return conn;
	}
}