package com.pikapedia.search;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class DBManager {
	
	
	public static Connection connect(){
		String url = "jdbc:oracle:thin:@j3ztyaovkh9aoawj_high?TNS_ADMIN=C:/jsw_sbt7/Wallet_J3ZTYAOVKH9AOAWJ";
		Connection con = null;
		try {
			con = DriverManager.getConnection(url, "ADMIN", "Soldesk802!!");
		} catch (SQLException e) {
			e.printStackTrace();
		}		
		System.out.println("연결 완료!");
		return con;
	}
	// C:/HJP/Wallet_J3ZTYAOVKH9AOAWJ
	public static void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
		try {
				
		if (rs!= null) {
		
			rs.close();
		}
		pstmt.close();
		
		con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	
	
}