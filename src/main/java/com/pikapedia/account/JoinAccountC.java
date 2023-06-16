package com.pikapedia.account;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JoinAccountC")
public class JoinAccountC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AccountDAO.checkLogin(request);
		request.setAttribute("contentPage", "jsp/join.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// �����ϴ� ��
		AccountDAO.joinAccount(request);
		// ����?
		AccountDAO.checkLogin(request);
		request.setAttribute("contentPage", "jsp/pokemonMain.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
