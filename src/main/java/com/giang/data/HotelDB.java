package com.giang.data;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.giang.model.Destination;
import com.giang.model.Hotel;
import com.giang.model.Room;
import com.giang.model.User;

public class HotelDB {

	public HotelDB() {
		// TODO Auto-generated constructor stub
	}
	
	public Hotel getHotel(int id) {
		Transaction transaction = null;
		Hotel hotel = null;
		
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			// start a transaction
			transaction = session.beginTransaction();
			// get hotel from database
			hotel = session.get(Hotel.class, id);
			// commit transaction
			transaction.commit();
		} catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
		
		return hotel;
	}
	
	public List<Hotel> getAllHotel() {
		try {
        	return HibernateUtil.getSessionFactory().openSession().createQuery("From Hotel").getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
		return null;
	}
	
	public void deleteHotel(int id) {
        Transaction transaction = null;
        Hotel hotel = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // delete hotel object
            hotel = session.get(Hotel.class, id);
            session.delete(hotel);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }
	
	@SuppressWarnings("unchecked")
	public List<String> getHotelImages(int hotelId) {
		Transaction transaction = null;
		List<String> images = new ArrayList<String>();
		
		try {
			//Create a session
			Session session = HibernateUtil.getSessionFactory().getCurrentSession();
			// start a transaction
			transaction = session.beginTransaction();
			// get hotel offer list from database
			images = (ArrayList<String>) session.createQuery("Select hotelImage From HotelImages where hotelId=:hid").setParameter("hid", hotelId).list();
			// commit transaction
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
	        }
            e.printStackTrace();
        }
		
		return images;
	}
	
	@SuppressWarnings("unchecked")
	public List<String> getHotelOffers(int hotelId) {
		Transaction transaction = null;
		List<String> offers = new ArrayList<String>();
		
		try {
			//Create a session
			Session session = HibernateUtil.getSessionFactory().getCurrentSession();
			// start a transaction
			transaction = session.beginTransaction();
			// get hotel offer list from database
			offers = (ArrayList<String>) session.createQuery("Select offer From HotelOffers where hotelId=:hid").setParameter("hid", hotelId).list();
			// commit transaction
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
	        }
            e.printStackTrace();
        }
		
		return offers;
	}
	
	public Room getHotelRoom(int roomId) {
		Transaction transaction = null;
		Room room = new Room();
		
		try {
			//Create a session
			Session session = HibernateUtil.getSessionFactory().getCurrentSession();
			// start a transaction
			transaction = session.beginTransaction();
			// get room from database
			room = (Room) session.createQuery("From Room where roomId=:rid").setParameter("rid", roomId).uniqueResult();
			// commit transaction
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
	        }
            e.printStackTrace();
        }
		
		return room;
	}
	
	@SuppressWarnings("unchecked")
	public List<String> getRoomOffers(int roomId) {
		Transaction transaction = null;
		List<String> offers = new ArrayList<String>();
		
		try {
			//Create a session
			Session session = HibernateUtil.getSessionFactory().getCurrentSession();
			// start a transaction
			transaction = session.beginTransaction();
			// get room offer list from database
			offers = (ArrayList<String>) session.createQuery("Select offer From RoomOffers where roomId=:rid").setParameter("rid", roomId).list();
			// commit transaction
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
	        }
            e.printStackTrace();
        }
		
		return offers;
	}
}
