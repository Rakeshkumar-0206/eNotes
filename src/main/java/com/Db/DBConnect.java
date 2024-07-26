package com.Db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	public static Connection conn=null;
	public static Connection getConn() {
		try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/enotes","root","root");
				System.out.print("Connected");
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
}
