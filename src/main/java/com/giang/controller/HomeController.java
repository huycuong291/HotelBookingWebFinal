package com.giang.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.giang.data.DestinationDB;
import com.giang.model.Destination;


public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DestinationDB destinationDb;
	
    public HomeController() {
        destinationDb = new DestinationDB();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Destination> desList = destinationDb.getAllDestination();
		
		// save destination list to "session" 
		HttpSession session = request.getSession();
		session.setAttribute("desList", desList);
		// variable help to know the user log in or not (default the user was not log in)
		session.setAttribute("isLogin", "False");
		
		// redirect to homepage
		response.sendRedirect("index.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
