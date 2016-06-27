package org.dorageecorp.com;

import java.sql.DriverManager;

import org.junit.Test;

import java.sql.Connection;

public class MySQLConnectionTest {

	private static final String DRIVER = "com.mysql.jdbc.Driver";
	private static final String URI = "jdbc:mysql://10.113.182.210:3306/btms";
	private static final String USER = "tjcky";
	private static final String PW = "qewr1324";
	
	@Test
	public void testConnection() throws Exception {
		Class.forName(DRIVER);
		
		try (Connection con = DriverManager.getConnection(URI, USER, PW)){
			System.out.println(con);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
