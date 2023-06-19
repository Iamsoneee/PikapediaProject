package com.pikapedia.search;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jp.account.AccountDAO;

@WebServlet("/MyRewardC")
public class MyRewardC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		com.pikapedia.account.AccountDAO.checkLogin(request);
		SearchDAO.getAllPokemon(request);
		request.setAttribute("contentPage", "myRewards.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
