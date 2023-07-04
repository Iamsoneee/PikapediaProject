package com.pikapedia.account;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pikapedia.db.DBDAO;

@WebServlet("/LoginC")
public class LoginC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("contentPage", "/jsp/login.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		AccountDAO.Login(request);
		DBDAO.getAllPokemon(request);
		DBDAO.getAllColor(request);
		DBDAO.getPokemonTypes(request);
		request.setAttribute("contentPage", "jsp/pokemonMain.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);	
	}

}
