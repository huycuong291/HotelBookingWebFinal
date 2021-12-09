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


//@WebServlet("/SearchingController")
public class SearchingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    DestinationDB destinationDb;   
	
    public SearchingController() {
        super();
        destinationDb = new DestinationDB();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Destination> desList = destinationDb.getAllDestination();
		String desName = request.getParameter("desName");
		
		request.setAttribute("desList", desList);
		request.setAttribute("desName", desName);
		getServletContext().getRequestDispatcher("/searchDes.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
