package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		try {
			HttpSession session=request.getSession();
			session.removeAttribute("userD");
			
			HttpSession session2=request.getSession();
			session.setAttribute("logoutMsg", "You have been logged out.");
			response.sendRedirect("index.jsp");
		}catch(Exception e) {
			e.printStackTrace();
		}

	}

}
