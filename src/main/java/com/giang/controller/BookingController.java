package com.giang.controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


//@WebServlet("/bookingHotel")
public class BookingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookingController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("hotel.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		
		try {
			if(action.equals("book")) {
				booking(request, response);
			}
			else if(action.equals("pay")) {
				
			}
        } catch (Exception e) {
            e.printStackTrace();
        }
		
	}
	
	private void booking(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		try {
			HttpSession session = request.getSession();
			String url = "/login.jsp";
			String isLogin = (String) session.getAttribute("isLogin");
			int hotelId = Integer.parseInt(request.getParameter("hotelId"));
			
			if(isLogin.equals("True")) {
				url = "/payment.jsp";
				
				String detailPrice = request.getParameter("detailPrice");
		        String totalPrice = request.getParameter("totalPrice");
		        
		        String detailFee = request.getParameter("detailFee");
		        String totalFee = request.getParameter("totalFee");
		        
		        String detailTotal = request.getParameter("detailTotal");
		        String totalTotal = request.getParameter("totalTotal");
		        totalTotal= totalTotal.replace("$", "");
		        int intTotal= Integer.parseInt(totalTotal);
		        
		        
		        session.setAttribute("detailPrice", detailPrice);
		        session.setAttribute("totalPrice", totalPrice);
		        
		        session.setAttribute("detailFee", detailFee);
		        session.setAttribute("totalFee", totalFee);
		
		        session.setAttribute("detailTotal", detailTotal);
		        session.setAttribute("totalTotal", intTotal);
		
		        String dateIn = request.getParameter("tripStart");
		        session.setAttribute("dateIn", dateIn);
		        String dateOut = request.getParameter("tripEnd");
		        session.setAttribute("dateOut", dateOut);
		        
		        String countGuest = request.getParameter("guestDetail");
		        session.setAttribute("countGuest", countGuest);
			}
	        
	        request.setAttribute("hotelId", hotelId);
	        request.setAttribute("pageBefore", "True");
	        
	        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
	        dispatcher.forward(request, response);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
    }
}
