package com.pikapedia.translation;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import com.pikapedia.db.DBDAO;

public class TranslationDAO {

	public static void translationJP(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		String lang = "";

		if (request.getAttribute("lang") == null) {
			lang = request.getParameter("lang");

			// 세션에 언어설정을 담아두고
			session.setAttribute("lang", lang);
		} else {
			session = request.getSession();
		}
		
		//꺼내서 확인
		String language = (String) session.getAttribute("lang");

		if (language.equals("kr")) {
			DBDAO.getAllColor(request);
			DBDAO.getAllPokemon(request);
			DBDAO.getTypePokemon(request);
		} else {
			DBDAO.getAllColorJp(request);
			DBDAO.getAllPokemnJP(request);
			DBDAO.getTypePokemonJP(request);
		}
	}
}
