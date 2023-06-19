package com.pikapedia.search;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

public class SearchDAO {

	public static void getAllPokemon(HttpServletRequest request) {
		
		Connection con =null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from pokemon_ko order by p_no";
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			Pokemon pokemon = null;
			ArrayList<Pokemon> pokemons = new ArrayList<Pokemon>();
			while (rs.next()) {
			int no = rs.getInt("p_no");
			String no2 = "";
			if (no > 0) {
			no2 = String.format("%03d", no);
				System.out.println(no2);
			}
			String name = rs.getString("p_name");
			Double height = rs.getDouble("p_height");
			Double weight = rs.getDouble("p_weight");
			String type1 = rs.getString("p_type");
			String type2 = rs.getString("p_type2");
			String des = rs.getString("p_des");
			String frontDefault = rs.getString("p_front_default");
			String backDefault = rs.getString("p_back_default");
			String frontShiny = rs.getString("p_front_shiny");
			String backShiny = rs.getString("p_back_shiny");
			
			pokemon = new Pokemon(no2, name, height, weight, type1, type2, des, frontDefault, backDefault, frontShiny, backShiny);
			pokemons.add(pokemon);
			}
			request.setAttribute("Pokemons", pokemons); 

		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, rs);
		}
	}

	

	
	

}
