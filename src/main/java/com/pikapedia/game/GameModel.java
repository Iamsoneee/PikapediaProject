package com.pikapedia.game;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class GameModel {

	public static void random(HttpServletRequest request) {
		Random random = new Random();
		int randomDex = random.nextInt(151);

		String url = "https://pokeapi.co/api/v2/pokemon-form/" + randomDex + "/";
		String url2 = "https://pokeapi.co/api/v2/pokemon-species/" + randomDex + "/";
		
		try {
			URL u = new URL(url);
			URL u2 = new URL(url2);
			HttpURLConnection huc = (HttpURLConnection) u.openConnection();
			HttpURLConnection huc2 = (HttpURLConnection) u2.openConnection();

			InputStream is = huc.getInputStream();
			InputStream is2 = huc2.getInputStream();
			InputStreamReader isr = new InputStreamReader(is, "utf-8");
			InputStreamReader isr2 = new InputStreamReader(is2, "utf-8");

			JSONParser jp = new JSONParser();
			JSONObject dexData = (JSONObject) jp.parse(isr);
			JSONObject dexData2 = (JSONObject) jp.parse(isr2);

			
			JSONObject pmg = (JSONObject) dexData.get("sprites");
			String img = (String) pmg.get("front_default");
			request.setAttribute("img", img);
			

			JSONArray namesArray = (JSONArray) dexData2.get("names");
			for (Object nameObj : namesArray) {
				JSONObject nameData = (JSONObject) nameObj;
				String languageName = (String) ((JSONObject) nameData.get("language")).get("name");
				String name = (String) nameData.get("name");
				if (languageName.equals("ko")) {
					request.setAttribute("languageDex", name);
					break;
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
