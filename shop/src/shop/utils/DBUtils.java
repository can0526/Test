package shop.utils;

import java.sql.DriverManager;
import java.sql.SQLException;

import java.sql.Connection;

public class DBUtils {
	
	public static Connection getCon() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con= DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shop", "root", "123");
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return  con;
	}
	
}
