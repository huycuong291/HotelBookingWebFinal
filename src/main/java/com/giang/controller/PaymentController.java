package com.giang.controller;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.giang.data.HotelDB;
import com.giang.model.Hotel;
import com.giang.model.User;


@WebServlet("/paid")
public class PaymentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    HotelDB hotelDb;
   
    public PaymentController() {
        super();
        hotelDb = new HotelDB();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String username = "giangtiny12@gmail.com";
		 String password = "G27082001";
		HttpSession sess= request.getSession();
		
		
		
		
		String dateIn = (String) sess.getAttribute("dateIn");
		String dateOut = (String) sess.getAttribute("dateOut");
		String guestDetail = (String) sess.getAttribute("countGuest");
		int totalFee = (int) sess.getAttribute("totalTotal");
		
		Hotel hotel = hotelDb.getHotel(Integer.parseInt(request.getParameter("hotelId")));
		User user = (User) sess.getAttribute("user");
		String emailTo = user.getEmail().toString();
		//String emailTo = "19110104@student.hcmute.edu.vn";
		String emailSubject = "Booking Confirmation";
		String emailContent = "Dear " + user.getFullName() + ",\n\n"
				+ "Thank you for choosing our service. Here is what you booked:\n"
				+ "A room at " + hotel.getHotelName() + ",\n"
				+ "From: " + dateIn + " to " + dateOut + ",\n"
				+ "Guest: " + guestDetail + ",\n"
				+ "Total Fee: " + totalFee + "$,\n"
				+ "Have a great day and thanks again!\n\n"
				+ "Giang Dang\n"
				+ "Thich3Nguoi.";
		
		
	
			try {
		        // 2 - create a message
				Properties props = new Properties();
				props.put("mail.transport.protocol", "smtps");
		        props.put("mail.smtps.host", "smtp.gmail.com");
		        props.put("mail.smtps.port", 465);
		        props.put("mail.smtps.auth", "true");
		        props.put("mail.smtps.quitwait", "false");
			
			    //get session to authenticate the host email address and password
		        Session session = Session.getDefaultInstance(props);
		        session.setDebug(true);
				/*
				 * Session session = Session.getInstance(props, new Authenticator() {
				 * 
				 * @Override protected PasswordAuthentication getPasswordAuthentication() {
				 * return new PasswordAuthentication(username, password); } });
				 */
		        
		       
		        
			    //set email message details
			    Message mess = new MimeMessage(session);
			
				//set from email address
			    mess.setFrom(new InternetAddress(username));
				//set to email address or destination email address
			    mess.setRecipient(Message.RecipientType.TO, new InternetAddress(emailTo));
				
				//set email subject
			    mess.setSubject(emailSubject);
			    
			    
			    //set message text
		        mess.setText(emailContent);
		       
		   
			    //send the message
		        Transport transport = session.getTransport();
		        transport.connect(username, password);
		        transport.sendMessage(mess, mess.getAllRecipients());
		        transport.close();
			}
			
			catch (Exception e) {
			    e.printStackTrace();
			}
        RequestDispatcher dispatcher = request.getRequestDispatcher("thanks.jsp");
        dispatcher.forward(request, response);
	}
}

