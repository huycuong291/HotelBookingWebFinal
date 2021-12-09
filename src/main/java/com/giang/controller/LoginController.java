package com.giang.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.giang.data.HotelDB;
import com.giang.data.UserDB;
import com.giang.model.Hotel;
import com.giang.model.User;
import com.giang.model.WishlistViewModel;

import javax.servlet.RequestDispatcher;


@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private UserDB userDb;  
    private HotelDB hotelDb;
    
    public LoginController() {
        super();
        userDb = new UserDB();
        hotelDb = new HotelDB();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("login.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
            authenticate(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
	}
	
	private void authenticate(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// get email and password that user entered
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String pageBefore = request.getParameter("pageBefore");
        String url = "/index.jsp";
        
        if(pageBefore.equals("True")) {
        	String hotelId = request.getParameter("hotelId");
        	url = "/hotel?id=" + hotelId;
        }
    	if (userDb.validate(email ,password)) {
        	// get current user to save into session
        	User user = userDb.getUserByAccount(email, password);
        	// get wishlist to check whether a hotel was in wishlist or not (unfinished)
        	List<Hotel> hotelList = userDb.getWishlist(user.getUserId());
        	
        	// create view model
        	List<WishlistViewModel> wishlist = new ArrayList<WishlistViewModel>();
        	for(int i=0; i<hotelList.size(); i++) {
        		Hotel hotel = hotelList.get(i);
        		String hotelImage = hotelDb.getHotelImages(hotel.getHotelId()).get(0);
        		
        		wishlist.add(new WishlistViewModel(hotel, hotelImage));
        	}
        	
        	HttpSession session = request.getSession();
        	session.setAttribute("user", user);
        	session.setAttribute("wishlist", wishlist);
        	session.setAttribute("wishlistCheck", hotelList);
        	session.setAttribute("isLogin", "True");
        	
            getServletContext().getRequestDispatcher(url).forward(request, response);
        } 
        else {
        	// if wrong password or email return to login page with error message
            request.setAttribute("message", "Your Email/Password isn't correct");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
	}
}
