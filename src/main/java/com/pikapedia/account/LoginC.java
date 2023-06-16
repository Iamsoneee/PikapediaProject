package com.pikapedia.account;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginC")
public class LoginC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// �α���.jsp��
		AccountDAO.checkLogin(request);
		request.setAttribute("contentPage", "/jsp/login.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// �α��� �ϴ� ��
		AccountDAO.Login(request);
		AccountDAO.checkLogin(request);
	// ����?
		request.setAttribute("contentPage", "/jsp/pokemonMain.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
