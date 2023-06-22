package com.pikapedia.game;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import com.pikapedia.search.DBManager;
import com.pikapedia.serach.Poketmon;

public class GameDAO {

	public static void random(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT *FROM POKEMON_KO WHERE P_NO =?";
		Random random = new Random();
		int randomNumber = random.nextInt(151) + 1;
		
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, randomNumber);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				int p_no = rs.getInt("p_no");
				String p_name = rs.getString("p_name");
				String p_frontDefault = rs.getString("p_front_default");
				
				Poketmon poketmon = new Poketmon(p_no, p_name, 0, 0, "", "", "", p_frontDefault, "", "", "");
				
				request.setAttribute("poketmon", poketmon);
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}
}