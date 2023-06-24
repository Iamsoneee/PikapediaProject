package com.pikapedia.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

public class DBDAO {
	private static Connection  con = DBManager.connect();
	private static HashMap<String, String> colors;

	public static void getAllColor(HttpServletRequest request) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from type";
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			colors = new HashMap <String,String>();
			while (rs.next()) {
				colors.put(rs.getString("t_name_ko"), rs.getString("t_color"));
			}
			request.setAttribute("colors", colors);
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}	
	public static void getAllPokemon(HttpServletRequest request) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from pokemon_ko order by p_no";
		try {
			System.out.println("HC get All");
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			Pokemon pokemon = null;
			ArrayList<Pokemon> pokemons = new ArrayList<Pokemon>();
			while (rs.next()) {
				int no = rs.getInt("p_no");
				String no2 = "";
				if (no > 0) {
					no2 = String.format("%03d", no);
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

				pokemon = new Pokemon(no2, name, height, weight, type1, type2, des, frontDefault, backDefault,
						frontShiny, backShiny);
				pokemons.add(pokemon);
			}
			request.setAttribute("Pokemons", pokemons);
			

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}

	public static void getPokemonTypes(HttpServletRequest request) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from type";
		try {
			System.out.println(1111);
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			ArrayList<Type> types = new ArrayList<Type>();
			while (rs.next()) {
				String typeNameKo = rs.getString("t_name_ko");
				String typeNameJa = rs.getString("t_name_ja");
				String typeNameEn = rs.getString("t_name_en");
				String typeColor = rs.getString("t_color");
				String typeImg = rs.getString("t_img");

				Type type = new Type(typeNameKo, typeNameJa, typeNameEn, typeColor, typeImg);
				types.add(type);
			}
			request.setAttribute("Types", types);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}

	
}
