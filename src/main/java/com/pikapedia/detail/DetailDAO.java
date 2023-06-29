package com.pikapedia.detail;

import com.pikapedia.db.DBManager;
import com.pikapedia.db.Type;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;



public class DetailDAO {
	public static boolean isInteger(String strValue) {
		try {
			Integer.parseInt(strValue);
		    return true;
		} catch (NumberFormatException ex) {
			return false;
		}
	}
	public static void searchPoketmon(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from ";
		
		HttpSession session = request.getSession();
		String lang = request.getParameter("lang");
		
		if (lang == null || lang.equals("kr")) {
			lang = "kr";
		} else if (lang.equals("jp")) {
			lang = "jp";
		}
		
		String language = (String) session.getAttribute("lang");
		try {

			con = DBManager.connect();
			request.setCharacterEncoding("utf-8");
			String search = request.getParameter("search");
			if (language.equals("kr")) {
				sql = sql+" pokemon_ko ";
			} else if (language.equals("jp")){
				sql = sql+" pokemon_ja ";
			}
			if(isInteger(search)!=true)
			{
				sql = sql+"where p_name = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, search);
			}
			else{
				sql = sql+"where p_no = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, Integer.parseInt(search));
			}
			rs = pstmt.executeQuery();
			ArrayList<DetailPokeBean> scPokemons = new ArrayList<DetailPokeBean>();
			while (rs.next()) {
				int p_no = rs.getInt("p_no");
				String p_name = rs.getString ("p_name");
				double p_height = rs.getDouble ("p_height");
				double p_weight = rs.getDouble("p_weight");
				String p_type1 = rs.getString ("p_type");
				String p_type2 = rs.getString ("p_type2");
				if(p_type2==null)
				{
					p_type2="";
				}
				String p_des = rs.getString ("p_des");
				String p_frontDefault = rs.getString("p_front_default");
				String p_backDefault = rs.getString("p_back_default");
				String p_frontShiny = rs.getString("p_front_shiny");
				String p_backShiny = rs.getString("p_back_shiny");
				
				scPokemons.add(new DetailPokeBean(p_no,p_name,p_height,p_weight,p_type1,p_type2,p_des,p_frontDefault,p_backDefault,p_frontShiny,p_backShiny));
			}
			request.setAttribute("scPokemons", scPokemons);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}
	public static void typePoketmon(HttpServletRequest request) {
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
}
