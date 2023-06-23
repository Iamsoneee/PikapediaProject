package com.pikapedia.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

public class DBDAO {

	public static void getAllPokemon(HttpServletRequest request) {

		Connection con = null;
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
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from type";
		try {
			con = DBManager.connect();
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

	// 특정 포켓몬의 타입 정보 가져오기
	public static void getTypesByNo(HttpServletRequest request, String pokemonNo) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from pokemon_en where p_no = ?";
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, pokemonNo);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				String type1 = rs.getString("p_type");
				String type2 = rs.getString("p_type2");
				request.setAttribute("Type1", type1);
				request.setAttribute("Type2", type2);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}

}
