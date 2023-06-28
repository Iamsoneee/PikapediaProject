package com.pikapedia.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

public class DBDAO {
	private static Connection con = DBManager.connect();
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
		} 
	}
	
	public static void getAllColorJp(HttpServletRequest request) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from type";
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			colors = new HashMap <String,String>();
			while (rs.next()) {
				colors.put(rs.getString("t_name_ja"), rs.getString("t_color"));
			}
			request.setAttribute("colors", colors);
			
		}catch (Exception e) {
			e.printStackTrace();
		} 
	}
	
	public static void getAllPokemon(HttpServletRequest request) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from pokemon_ko order by p_no";
		
		try {
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
		} 
	}
	
	public static void getAllPokemonJP(HttpServletRequest request) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from pokemon_ja order by p_no";
		try {
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
		} 
	}

	public static void getPokemonTypes(HttpServletRequest request) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from type";
		try {
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
		}
	}

	
	public static void getRewardPokemon(HttpServletRequest request) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from pokemon_ko where p_no in (select r_no from reward where r_id = ?)";
		String id = request.getParameter("id");
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
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
		} /*
			 * finally { DBManager.close(con, pstmt, rs); }
			 */
	}
	
	public static void TypeView(HttpServletRequest request) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sqlKR = "select * from pokemon_ko where p_type = ? or p_type2 = ? order by p_no";
		String sqlJP = "select * from pokemon_ja where p_type = ? or p_type2 = ? order by p_no";
		
		String type = request.getParameter("type");
		System.out.println(type);
		
		
		switch (type) {
		case "normal":
			type = "노말";
			break;
		case "fire":
			type = "불꽃";
			break;
		case "water":
			type = "물";
			break;
		case "grass":
			type = "풀";
			break;
		case "electric":
			type = "전기";
			break;
		case "ice":
			type = "얼음";
			break;
		case "fight":
			type = "격투";
			break;
		case "poison":
			type = "독";
			break;
		case "ground":
			type = "땅";
			break;
		case "flying":
			type = "비행";
			break;
		case "psychic":
			type = "에스퍼";
			break;
		case "bug":
			type = "벌레";
			break;
		case "rock":
			type = "바위";
			break;
		case "ghost":
			type = "고스트";
			break;
		case "dragon":
			type = "드래곤";
			break;
		case "dark":
			type = "악";
			break;
		case "steel":
			type = "강철";
			break;
		case "fairy":
			type = "페어리";
			break;
		
		default:
			break;
		}
		
		try {
			pstmt = con.prepareStatement(sqlKR);																					
			pstmt.setString(1, type);
			pstmt.setString(2, type);
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
		}/*
		 * finally { DBManager.close(con, pstmt, rs); }
		 */
	}
	
	public static void TypeViewJP(HttpServletRequest request) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from pokemon_ja where p_type = ? or p_type2 = ? order by p_no";
		String type = request.getParameter("type");
		System.out.println(type);
		
		switch (type) {
		case "normal":
			type = "ノーマル";
			break;
		case "fire":
			type = "ほのお";
			break;
		case "water":
			type = "みず";
			break;
		case "grass":
			type = "くさ";
			break;
		case "electric":
			type = "でんき";
			break;
		case "ice":
			type = "こおり";
			break;
		case "fight":
			type = "かくとう";
			break;
		case "poison":
			type = "どく";
			break;
		case "ground":
			type = "じめん";
			break;
		case "flying":
			type = "ひこう";
			break;
		case "psychic":
			type = "エスパー";
			break;
		case "bug":
			type = "むし";
			break;
		case "rock":
			type = "いわ";
			break;
		case "ghost":
			type = "ゴースト";
			break;
		case "dragon":
			type = "ドラゴン";
			break;
		case "dark":
			type = "あく";
			break;
		case "steel":
			type = "はがね";
			break;
		case "fairy":
			type = "フェアリー";
			break;
		
		default:
			break;
		}
		
		try {
			pstmt = con.prepareStatement(sql);																					
			pstmt.setString(1, type);
			pstmt.setString(2, type);
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
		}/*
		 * finally { DBManager.close(con, pstmt, rs); }
		 */
	}
	
	public static void getRewardCount(HttpServletRequest request) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select count(*) from reward where r_id = ?";
		String id = request.getParameter("id");
		int count = 0;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				count = rs.getInt(1); 
				System.out.println(count);
			}
			
			request.setAttribute("RewardCount", count);

		} catch (Exception e) {
			e.printStackTrace();
		} /*
			 * finally { DBManager.close(con, pstmt, rs); }
			 */
	}
	
	public static void getAllPokemonCount(HttpServletRequest request) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select count(*) from pokemon_ko";
		int count = 0;
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				count = rs.getInt(1); 
				System.out.println(count);
			}
			
			request.setAttribute("AllPokemonCount", count);

		} catch (Exception e) {
			e.printStackTrace();
		} /*
			 * finally { DBManager.close(con, pstmt, rs); }
			 */
	}
}
