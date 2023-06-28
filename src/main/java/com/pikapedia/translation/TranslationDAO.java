package com.pikapedia.translation;

import javax.servlet.http.HttpServletRequest;

import com.pikapedia.db.DBDAO;

public class TranslationDAO {
	
	public static void translationJP(HttpServletRequest request){
		
		String lang = request.getParameter("lang");
		if(lang.equals("kr")) {
			DBDAO.getAllColor(request);
			DBDAO.getAllPokemon(request);
		}
		else { 
			DBDAO.getAllColorJp(request);
			DBDAO.getAllPokemnJP(request);
		}
	}
}
