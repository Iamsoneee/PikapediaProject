package com.pikapedia.main;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Color")
public class Color extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String color = request.getParameter("color");
	request.getSession().setAttribute("color2", color);
		System.out.println("c1 : " +color);
		System.out.println(request.getAttribute("color1"));
		System.out.println(request.getSession().getAttribute("color2"));
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}