package com.pikapedia.translation;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pikapedia.account.AccountDAO;
import com.pikapedia.db.DBDAO;

@WebServlet("/TranslationC")
public class TranslationC extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		DBDAO.getPokemonTypes(request);
		DBDAO.getAllPokemon(request);
		DBDAO.getAllColor(request);
		request.setAttribute("contentPage", "/jsp/pokemonMain.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
