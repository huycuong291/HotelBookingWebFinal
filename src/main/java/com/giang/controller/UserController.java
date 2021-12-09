package com.giang.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.giang.data.UserDB;
import com.giang.model.User;


@WebServlet("/register")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private UserDB userDao;
 
    public UserController() {
        super();
        userDao = new UserDB();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("login.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		
		if(action.equals("registeruser")) {
			register(request, response);
		}
		else if(action.equals("edituser")) {
			edit(request, response);
		}
	}
	
	private void register(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		// get email and password that the user entered
        String email = request.getParameter("registerEmail");
        String password = request.getParameter("registerPass");

        if (userDao.existEmail(email)) {
        	// if email has already existed return to login page with error message
            request.setAttribute("emailExist_message", "Your Email has already been used!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } 
        else {
        	// add new user to database and redirect to login page
            User user = new User();
            user.setEmail(email);
            user.setPassword(password);
            userDao.saveUser(user);
            
            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
            dispatcher.forward(request, response);
        }
    }
	
	public void edit(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		HttpSession session = request.getSession();
		User currentUser = (User) session.getAttribute("user");
		
		String fullName = request.getParameter("fullname");
		String gender = request.getParameter("gender");
		String dateOfBirth = request.getParameter("dateOfBirth");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
		String address = request.getParameter("address");
        String password = request.getParameter("password");

        LocalDate localDate = LocalDate.parse(dateOfBirth);
        
        
        //update current user's information
        currentUser.setFullName(fullName);
        currentUser.setGender(gender);
        currentUser.setDateOfBirth(localDate);
        currentUser.setEmail(email);
        currentUser.setPhone(phone);
        currentUser.setAddress(address);
        currentUser.setPassword(password);
        
        //update user to database
        userDao.updateUser(currentUser);
        
        //update user in session
    	session.setAttribute("user", currentUser);
    	
        response.sendRedirect("userinfo.jsp");
	}
}
