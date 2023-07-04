package com.pikapedia.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class DBDAO {
	private static Connection con = DBManager.connect();
	private static HashMap<String, String> colors;

	public static void getAllColor(HttpServletRequest request) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from type";
		
		HttpSession session = request.getSession();
		String lang = request.getParameter("lang");
		
		if (lang == null || lang.equals("kr")) {
			lang = "kr";
		} else if (lang.equals("jp")) {
			lang = "jp";
		} else if (lang.equals("en")) {
			lang = "en";
		}
		
		String language = (String) session.getAttribute("lang");
			
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			colors = new HashMap <String,String>();
			while (rs.next()) {
				//꺼내서 확인

				if (language.equals("kr")) {
					colors.put(rs.getString("t_name_ko"), rs.getString("t_color"));
				} else if (language.equals("jp")){
					colors.put(rs.getString("t_name_ja"), rs.getString("t_color"));
				} else if (language.equals("en")) {
					colors.put(rs.getString("t_name_en"), rs.getString("t_color"));
				}
				
			}
			request.setAttribute("colors", colors);
			
		}catch (Exception e) {
			e.printStackTrace();
		} 
	}
	
	public static void getAllPokemon(HttpServletRequest request) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		
		HttpSession session = request.getSession();
		String lang = request.getParameter("lang");
		
		if (lang == null || lang.equals("kr")) {
			lang = "kr";
		} else if (lang.equals("jp")) {
			lang = "jp";
		} else if (lang.equals("en")) {
			lang = "en";
		}
		
		// 세션에 언어설정을 담아두고
				session.setAttribute("lang", lang);
				session = request.getSession();
	
		//꺼내서 확인
		String language = (String) session.getAttribute("lang");

		if (language.equals("kr")) {
			sql = "select * from pokemon_ko order by p_no";
		} else if (language.equals("jp")){
			sql = "select * from pokemon_ja order by p_no";
		} else if (language.equals("en")) {
			sql = "select * from pokemon_en order by p_no";
		}
		
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
		String sql = "";
		String id = request.getParameter("id");
		
		HttpSession session = request.getSession();
		String lang = request.getParameter("lang");
		
		if (lang == null || lang.equals("kr")) {
			lang = "kr";
		} else if (lang.equals("jp")) {
			lang = "jp";
		} else if (lang.equals("en")) {
			lang = "en";
		}
	
		//꺼내서 확인
		String language = (String) session.getAttribute("lang");

		if (language.equals("kr")) {
			sql = "select * from pokemon_ko where p_no in (select r_no from reward where r_id = ?)";
		} else if (language.equals("jp")){
			sql = "select * from pokemon_ja where p_no in (select r_no from reward where r_id = ?)";
		} else if (language.equals("en")) {
			sql = "select * from pokemon_en where p_no in (select r_no from reward where r_id = ?)";
		}
		 
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
		} 
	}
	
	public static void TypeView(HttpServletRequest request) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "";
		
		String type = request.getParameter("type");
		System.out.println(type);
		
		HttpSession session = request.getSession();
		String lang = request.getParameter("lang");
		
		if (lang == null || lang.equals("kr")) {
			lang = "kr";
		} else if (lang.equals("jp")) {
			lang = "jp";
		} else if (lang.equals("en")) {
			lang = "en";
		} 
	
		//꺼내서 확인
		String language = (String) session.getAttribute("lang");

		if (language.equals("kr")) {
			sql = "select * from pokemon_ko where p_type = ? or p_type2 = ? order by p_no";
			switch (type) {
			case "Normal":
				type = "노말";
				break;
			case "Fire":
				type = "불꽃";
				break;
			case "Water":
				type = "물";
				break;
			case "Grass":
				type = "풀";
				break;
			case "Electric":
				type = "전기";
				break;
			case "Ice":
				type = "얼음";
				break;
			case "Fight":
				type = "격투";
				break;
			case "Poison":
				type = "독";
				break;
			case "Ground":
				type = "땅";
				break;
			case "Flying":
				type = "비행";
				break;
			case "Psychic":
				type = "에스퍼";
				break;
			case "Bug":
				type = "벌레";
				break;
			case "Rock":
				type = "바위";
				break;
			case "Ghost":
				type = "고스트";
				break;
			case "Dragon":
				type = "드래곤";
				break;
			case "Dark":
				type = "악";
				break;
			case "Steel":
				type = "강철";
				break;
			case "Fairy":
				type = "페어리";
				break;
			
			default:
				break;
			}
		} else if (language.equals("jp")){
			sql = "select * from pokemon_ja where p_type = ? or p_type2 = ? order by p_no";
			switch (type) {
			case "Normal":
				type = "ノーマル";
				break;
			case "Fire":
				type = "ほのお";
				break;
			case "Water":
				type = "みず";
				break;
			case "Grass":
				type = "くさ";
				break;
			case "Electric":
				type = "でんき";
				break;
			case "Ice":
				type = "こおり";
				break;
			case "Fight":
				type = "かくとう";
				break;
			case "Poison":
				type = "どく";
				break;
			case "Ground":
				type = "じめん";
				break;
			case "Flying":
				type = "ひこう";
				break;
			case "Psychic":
				type = "エスパー";
				break;
			case "Bug":
				type = "むし";
				break;
			case "Rock":
				type = "いわ";
				break;
			case "Ghost":
				type = "ゴースト";
				break;
			case "Dragon":
				type = "ドラゴン";
				break;
			case "Dark":
				type = "あく";
				break;
			case "Steel":
				type = "はがね";
				break;
			case "Fairy":
				type = "フェアリー";
				break;
			
			default:
				break;
			}
		} else if (language.equals("en")) {
			sql = "select * from pokemon_en where p_type = ? or p_type2 = ? order by p_no";
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
		}
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
		} 
	}
	public static void getAllPokemonCount(HttpServletRequest request) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select count(*) from Pokemon_ko";
		int count = 0;
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				count = rs.getInt(1); 
				System.out.println(count);
			}
			
			request.setAttribute("PokemonCount", count);

		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
}
