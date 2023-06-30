package com.pikapedia.detail;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CheckPokemon")
public class CheckPokemon extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ajax ÄÝ");
		response.setCharacterEncoding("utf-8");
		System.out.println(DetailDAO.searchPoketmon(request));
		response.getWriter().write(DetailDAO.searchPoketmon(request));
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
