package com.giang.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.giang.data.HotelDB;
import com.giang.model.Hotel;
import com.giang.model.HotelViewModel;
import com.giang.model.Room;


//@WebServlet("/HotelController")
public class HotelController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    HotelDB hotelDb;
    public HotelController() {
        super();
        hotelDb = new HotelDB();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int hotelId = Integer.parseInt(request.getParameter("id"));
		
		Hotel hotel = hotelDb.getHotel(hotelId);
		List<String> hotelOffers = hotelDb.getHotelOffers(hotelId);
		List<String> hotelImages = hotelDb.getHotelImages(hotelId);
		Room room = hotelDb.getHotelRoom(hotel.getRoomId());
		List<String> roomOffers = hotelDb.getRoomOffers(hotel.getRoomId());
		// initialize hotel view model
		HotelViewModel viewModel = new HotelViewModel(hotel, hotelOffers, hotelImages, room, roomOffers);
		
		// send view model to display on view
		request.setAttribute("viewModel", viewModel);
		request.setAttribute("hotelId", hotelId);
		getServletContext().getRequestDispatcher("/hotel.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
