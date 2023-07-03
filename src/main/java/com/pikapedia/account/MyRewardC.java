package com.pikapedia.account;

import com.pikapedia.db.DBDAO;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/MyRewardC")
public class MyRewardC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DBDAO.getRewardPokemon(request);
		DBDAO.getRewardCount(request);
		DBDAO.getAllPokemonCount(request);
		request.setAttribute("contentPage", "jsp/myRewards.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
