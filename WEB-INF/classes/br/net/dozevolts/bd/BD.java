package br.net.dozevolts.bd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BD {
	
	private Connection conn;
	private static String url; 
	private static String user;
	private static String password;
	
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
//			url = "jdbc:mysql://mysql.12volts.net.br/12volts";
			url = "jdbc:mysql://localhost/sql_12volts";
			user = "admin";
			password = "admin";
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	protected Connection obterConexao() throws SQLException, Exception {
		if (this.conn == null || this.conn.isClosed())
			this.conn = DriverManager.getConnection(url, user, password);
    	return this.conn;
	}
	
}
