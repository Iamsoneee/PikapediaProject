package com.pikapedia.game;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

// db���� �۾��� �Ҷ� �����ڵ带 �� ���Ŀ� �۾� �ؿ�
// �� ���� ����

// �װ� AOP ����
public class DBManager {
	
	
	// db �۾��ÿ� ��¶�� ���� �ؾߵ�
	static Connection connect() throws SQLException {
		String url = "jdbc:oracle:thin:@j3ztyaovkh9aoawj_high?TNS_ADMIN=C:/HJP/Wallet_J3ZTYAOVKH9AOAWJ";
		Connection con = DriverManager.getConnection(url, "ADMIN", "Soldesk802!!");		
		System.out.println("���� ����!");
		return DriverManager.getConnection(url, "ADMIN", "Soldesk802!!");
	}
	
	//������ ������ �ѹ��� �ݱ�
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
