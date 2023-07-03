package com.pikapedia.parsing;


import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Scanner;

import javax.net.ssl.HttpsURLConnection;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.pikapedia.db.DBManager;
	
public class PokemonParsing {
	public static void PokemonParsingKR() {
	for(int guide = 491 ; guide <= 493 ; guide++) {
			
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
						p_name = name;
					}
				}
				
				p_weight = Double.parseDouble(String.valueOf(pokemonObject.get("weight")))/10;
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
						p_des = name;
						
					}
				}
				
				JSONObject pmg = (JSONObject) pokemonFormObject.get("sprites");
				
				String frontDefault = (String) pmg.get("front_default");
				String backDefault = (String) pmg.get("back_default");
				String frontShiny = (String) pmg.get("front_shiny");
				String backShiny = (String) pmg.get("back_shiny");
				String sql = "insert into pokemon_ko values (?,?,?,?,?,?,?,?,?,?,?)";
				
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
					System.out.println(guide);
					System.out.println("��ϿϷ�");
				}
						
			}
				
				
			catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(con, pstmt, rs);
			}
		}
	}
	
	public static void PokemonParsingJP() {
		for(int guide = 491 ; guide <= 493 ; guide++) {
			
			String nameUrl = "https://pokeapi.co/api/v2/pokemon-species/"+guide+"/";
			String pokemonUrl = "https://pokeapi.co/api/v2/pokemon/"+guide+"/";
			String pokemonFormUrl = "https://pokeapi.co/api/v2/pokemon-form/"+guide+"/";
			
			Connection con = null;
			PreparedStatement pstmt = null;
			
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
					if (languageName.equals("ja")) {
						p_name = name;
					}
				}
				
				p_weight = Double.parseDouble(String.valueOf(pokemonObject.get("weight")))/10;
				
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
						if (languageName.equals("ja")) {
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
					if (languageName.equals("ja")&&versionName.equals("alpha-sapphire")) {
						p_des = name;
						
					}
				}
				
				JSONObject pmg = (JSONObject) pokemonFormObject.get("sprites");
				
				String frontDefault = (String) pmg.get("front_default");
				String backDefault = (String) pmg.get("back_default");
				String frontShiny = (String) pmg.get("front_shiny");
				String backShiny = (String) pmg.get("back_shiny");

				String sql = "insert into pokemon_ja values (?,?,?,?,?,?,?,?,?,?,?)";
				
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
					System.out.println(guide);
					System.out.println("��ϿϷ�");
				}
						
			}
				
			catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(con, pstmt, null);
			}
		}	
	}
	
	public static void PokemonParsingEN() {
		for(int guide = 1 ; guide <= 493 ; guide++) {
			
			String nameUrl = "https://pokeapi.co/api/v2/pokemon-species/"+guide+"/";
			String pokemonUrl = "https://pokeapi.co/api/v2/pokemon/"+guide+"/";
			String pokemonFormUrl = "https://pokeapi.co/api/v2/pokemon-form/"+guide+"/";
			
			Connection con = null;
			PreparedStatement pstmt = null;
			
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
					if (languageName.equals("en")) {
						p_name = name;
					}
				}
				
				p_weight = Double.parseDouble(String.valueOf(pokemonObject.get("weight")))/10;
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
						if (languageName.equals("en")) {
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
					if (languageName.equals("en")&&versionName.equals("alpha-sapphire")) {
						p_des = name;
					}
				}
				
				JSONObject pmg = (JSONObject) pokemonFormObject.get("sprites");
				
				String frontDefault = (String) pmg.get("front_default");
				String backDefault = (String) pmg.get("back_default");
				String frontShiny = (String) pmg.get("front_shiny");
				String backShiny = (String) pmg.get("back_shiny");

				String sql = "insert into pokemon_en values (?,?,?,?,?,?,?,?,?,?,?)";
				
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
					System.out.println(guide);
					System.out.println("��ϿϷ�");
				}
						
			}
				
			catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(con, pstmt, null);
			}
		}	
	}
}