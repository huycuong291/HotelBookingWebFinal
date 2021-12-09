package com.giang.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.giang.model.User;


//@WebServlet("/AccountController")
public class AccountController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AccountController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String action = request.getParameter("action");
		String url = "/login.jsp";
		
		if(action.equals("signout")) {
			url = "/home";
			//session.setAttribute("user", null);
			session.invalidate();
			getServletContext().getRequestDispatcher(url).forward(request, response);
		}
		else {
			if(action.equals("wishlist")) {
				url = "/wishlist.jsp";
			}
			else if(action.equals("userinfo")) {
				url = "/userinfo.jsp";
			}
			
			
			User user = (User) session.getAttribute("user");
			if(user != null) {
				session.setAttribute("isLogin", "True");
				getServletContext().getRequestDispatcher(url).forward(request, response);
			}
			else {
				session.setAttribute("isLogin", "False");
				url = "/login.jsp";
				getServletContext().getRequestDispatcher(url).forward(request, response);
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
