package com.pikapedia.detail;


import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.net.ssl.HttpsURLConnection;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

	
public class ParsingApi {
	public static DetailPokeBean poketmon;
	public static void main(String[] args) {

	
			
			
			
		for(int guide=1 ; guide<=151 ; guide++)
		{
		
			String nameUrl = "https://pokeapi.co/api/v2/pokemon-species/"+guide+"/";
			String pokemonUrl = "https://pokeapi.co/api/v2/pokemon/"+guide+"/";
			String pokemonFormUrl = "https://pokeapi.co/api/v2/pokemon-form/"+guide+"/";
			
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			String p_name = "";
			double p_height;
			double p_weight;
			String p_des="";
			String p_type1="";
			String p_type2="";
			
			
			
			
			
			try {
				URL nameU = new URL(nameUrl);	
				URL pokemonU = new URL(pokemonUrl);
				URL pokemonFormU = new URL(pokemonFormUrl);
				HttpsURLConnection nameHuc = (HttpsURLConnection) nameU.openConnection();
				HttpsURLConnection pokemonHuc = (HttpsURLConnection) pokemonU.openConnection();
				HttpsURLConnection pokemonFormHuc = (HttpsURLConnection) pokemonFormU.openConnection();
				
				InputStream nameIs = nameHuc.getInputStream();
				InputStream pokemonIs = pokemonHuc.getInputStream();
				InputStream pokemonFormIs = pokemonFormHuc.getInputStream();
				InputStreamReader nameIsr = new InputStreamReader(nameIs, "utf-8");
				InputStreamReader pokemonIsr = new InputStreamReader(pokemonIs, "utf-8");
				InputStreamReader pokemonFormIsr = new InputStreamReader(pokemonFormIs, "utf-8");
				
				
				JSONParser jp = new JSONParser();
				
				
				JSONObject nameObject = (JSONObject) jp.parse(nameIsr);
				JSONObject pokemonObject = (JSONObject) jp.parse(pokemonIsr);
				JSONObject pokemonFormObject = (JSONObject) jp.parse(pokemonFormIsr);
				
				JSONArray namesArray = (JSONArray) nameObject.get("names");
				for (Object nameObj : namesArray) {
					JSONObject nameData = (JSONObject) nameObj;
					String languageName = (String) ((JSONObject) nameData.get("language")).get("name");
					String name = (String) nameData.get("name");
					if (languageName.equals("ko")) {
						System.out.println("이름: " + name);
						p_name = name;
					}
				}
				
				System.out.println("무게 : " + pokemonObject.get("weight"));
				p_weight = Double.parseDouble(String.valueOf(pokemonObject.get("weight")))/10;
				
				
				System.out.println("키 : " + pokemonObject.get("height"));
				p_height = Double.parseDouble(String.valueOf(pokemonObject.get("height")))/10;
				
				JSONArray typesArray = (JSONArray) pokemonObject.get("types");
				for (Object typeObj : typesArray) {
					JSONObject typeData = (JSONObject) typeObj;
					String typeUrl = (String) ((JSONObject) typeData.get("type")).get("url");
					URL typeU = new URL(typeUrl);
					HttpsURLConnection typeHuc = (HttpsURLConnection) typeU.openConnection();
					InputStream typeIs = typeHuc.getInputStream();
					InputStreamReader typeIsr = new InputStreamReader(typeIs, "utf-8");
					JSONObject typeObject = (JSONObject) jp.parse(typeIsr);
					JSONArray typeNamesArray = (JSONArray) typeObject.get("names");
					
					for (Object typeNameObj : typeNamesArray) {
						JSONObject typeNameData = (JSONObject) typeNameObj;
						String languageName = (String) ((JSONObject) typeNameData.get("language")).get("name");
						String typeName = (String) typeNameData.get("name");
						if (languageName.equals("ko")) {
							System.out.println("타입 : " + typeName);
							if(typesArray.indexOf(typeObj)==0)
							{
								p_type1 = typeName;
							}
							else if(typesArray.indexOf(typeObj)==1)
							{
								p_type2 = typeName;
							}
						}
					}
					
				}
				
				JSONArray desArray = (JSONArray) nameObject.get("flavor_text_entries");
				for (Object nameObj : desArray) {
					JSONObject nameData = (JSONObject) nameObj;
					String languageName = (String) ((JSONObject) nameData.get("language")).get("name");
					String versionName = (String) ((JSONObject) nameData.get("version")).get("name");
					String name = (String) nameData.get("flavor_text");
					if (languageName.equals("ko")&&versionName.equals("alpha-sapphire")) {
						System.out.println("설명 : " + name);
						p_des = name;
						
					}
				}
				
				JSONObject pmg = (JSONObject) pokemonFormObject.get("sprites");
				
				String frontDefault = (String) pmg.get("front_default");
				String backDefault = (String) pmg.get("back_default");
				String frontShiny = (String) pmg.get("front_shiny");
				String backShiny = (String) pmg.get("back_shiny");
				
				System.out.println("이미지1 : " + frontDefault);
				System.out.println("이미지2 : " + backDefault);
				System.out.println("이미지3 : " + frontShiny);
				System.out.println("이미지4 : " + backShiny);
				
				System.out.println(p_name);
				System.out.println(p_des);
				System.out.println(p_type1);
				System.out.println(p_type2);
				System.out.println(p_height);
				System.out.println(p_weight);
				poketmon = new DetailPokeBean(guide,p_name,p_height,p_weight,p_type1,p_type2,p_des,frontDefault,backDefault,frontShiny,backShiny);
				
				String sql = "insert into pokemon values (?,?,?,?,?,?,?,?,?,?,?)";
				
				
				con = DBManager.connect();
				pstmt = con.prepareStatement(sql);
				
				pstmt.setInt(1, guide);
				pstmt.setString(2, p_name);
				pstmt.setDouble(3, p_height);
				pstmt.setDouble(4, p_weight);
				pstmt.setString(5, p_type1);
				pstmt.setString(6, p_type2);
				pstmt.setString(7, p_des);
				pstmt.setString(8, frontDefault);
				pstmt.setString(9, backDefault);
				pstmt.setString(10, frontShiny);
				pstmt.setString(11, backShiny);
				if(pstmt.executeUpdate() == 1) {
					System.out.println("등록완료");
				}
						
			}
				
				
			catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(con, pstmt, rs);
			}
		}	
	}
}
	
	