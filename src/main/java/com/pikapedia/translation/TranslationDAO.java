package com.pikapedia.translation;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import com.pikapedia.db.DBDAO;

public class TranslationDAO {

	public static void translationJP(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		String lang = request.getParameter("lang");
		
		if (lang == null || lang.equals("kr")) {
			lang = "kr";
		} else if (lang.equals("jp")) {
			lang = "jp";
		} 

		// 세션에 언어설정을 담아두고
		session.setAttribute("lang", lang);
		session = request.getSession();
	
		//꺼내서 확인
		String language = (String) session.getAttribute("lang");

		if (language.equals("kr")) {
			DBDAO.getAllColor(request);
			DBDAO.getAllPokemon(request);
		} else if (language.equals("jp")){
			DBDAO.getAllColor(request);
			DBDAO.getAllPokemon(request);
		}
	}
		
	
}
