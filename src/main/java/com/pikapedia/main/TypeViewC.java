package com.pikapedia.main;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pikapedia.db.DBDAO;
import com.pikapedia.translation.TranslationDAO;

@WebServlet("/TypeViewC")
public class TypeViewC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		DBDAO.getPokemonTypes(request);		//포켓몬 타입테이블 가져오는 기능
		DBDAO.TypeView(request);
		DBDAO.getAllColor(request);
		request.setAttribute("contentPage", "jsp/pokemonMain.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
