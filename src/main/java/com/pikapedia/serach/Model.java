package com.pikapedia.serach;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;




public class Model {

	public static void searchPoketmon(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from pokemon where p_name = ?";
		
		try {
			request.setCharacterEncoding("utf-8");
			String search = request.getParameter("search");
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, search);
			rs = pstmt.executeQuery();
			ArrayList<Poketmon> scPokemons = new ArrayList<Poketmon>();
			while (rs.next()) {
				int p_no = rs.getInt("p_no");
				String p_name = rs.getString ("p_name");
				double p_height = rs.getDouble ("p_height");
				double p_weight = rs.getDouble("p_weight");
				String p_type1 = rs.getString ("p_type1");
				String p_type2 = rs.getString ("p_type2");
				if(p_type2==null)
				{
					p_type2="";
				}
				String p_des = rs.getString ("p_des");
				String p_frontDefault = rs.getString("p_front_default_img");
				String p_backDefault = rs.getString("p_back_default_img");
				String p_frontShiny = rs.getString("p_front_shiny_img");
				String p_backShiny = rs.getString("p_back_shiny_img");
				
				scPokemons.add(new Poketmon(p_no,p_name,p_height,p_weight,p_type1,p_type2,p_des,p_frontDefault,p_backDefault,p_frontShiny,p_backShiny));
			}
			request.setAttribute("scPokemons", scPokemons);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}

}
