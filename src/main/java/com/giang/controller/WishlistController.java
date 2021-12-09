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
import com.giang.data.WishlistDB;
import com.giang.model.Hotel;
import com.giang.model.User;
import com.giang.model.Wishlist;
import com.giang.model.WishlistViewModel;

/**
 * Servlet implementation class WishlistController
 */
@WebServlet("/WishlistController")
public class WishlistController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private WishlistDB wishlistDb;
    private UserDB userDb;
    private HotelDB hotelDb;

    public WishlistController() {
        super();
        wishlistDb = new WishlistDB();
        userDb = new UserDB();
        hotelDb = new HotelDB();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String url = "/wishlist.jsp";
		String isLogin = (String) session.getAttribute("isLogin");
		
		if(isLogin.equals("True")) {
			String action = request.getParameter("action");
			int hotelId = Integer.parseInt(request.getParameter("hotelId"));
			
			
			User currentUser = (User) session.getAttribute("user");
			
			if(action.equals("add")) {
				url = "/hotel?id=" + hotelId;
				wishlistDb.saveWish(new Wishlist(currentUser.getUserId(), hotelId));
			}
			else if(action.equals("remove")) {
				Wishlist removeWishlist = wishlistDb.getWishByHotelUser(currentUser.getUserId(), hotelId);
				wishlistDb.deleteWish(removeWishlist.getId());
			}
			List<Hotel> hotelList = userDb.getWishlist(currentUser.getUserId());
	    	
	    	// create view model
	    	List<WishlistViewModel> wishlist = new ArrayList<WishlistViewModel>();
	    	for(int i=0; i<hotelList.size(); i++) {
	    		Hotel hotel = hotelList.get(i);
	    		String hotelImage = hotelDb.getHotelImages(hotel.getHotelId()).get(0);
	    		
	    		wishlist.add(new WishlistViewModel(hotel, hotelImage));
	    	}
	    	
	    	session.setAttribute("wishlist", wishlist);
	    	session.setAttribute("wishlistCheck", hotelList);
		}
		else {
			url = "/login.jsp";
		}
		
		getServletContext().getRequestDispatcher(url).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
