package com.giang.data;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.giang.model.Hotel;
import com.giang.model.User;
import com.giang.model.Wishlist;

public class UserDB {

	public UserDB() {
		// TODO Auto-generated constructor stub
	}
	
	public void saveUser(User user) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the user object
            session.save(user);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }
	
	public void updateUser(User user) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // update the user object
            session.saveOrUpdate(user);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

	public User getUserByAccount(String email, String pass) {
		Transaction transaction = null;
		User user = null;
		
		try {
			// Create a session
			Session session = HibernateUtil.getSessionFactory().getCurrentSession();
			// start a transaction
			transaction = session.beginTransaction();
			// get user from from database
			user = (User) session.createQuery("From User where email=:email and password=:pass").setParameter("email", email).setParameter("pass", pass).uniqueResult();
			// commit transaction
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
	        }
            e.printStackTrace();
        }
		
		return user;
	}
	
	public boolean validate(String email, String password) {
        Transaction transaction = null;
        User user = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // get an user object
            user = (User) session.createQuery("FROM User WHERE email=:email").setParameter("email", email).uniqueResult();
            
            if (user != null && user.getPassword().equals(password)) {
            	// commit transaction
                transaction.commit();
                return true;
            }
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return false;
	}
	
	public boolean existEmail(String email) {

        Transaction transaction = null;
        User user = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // get an user object
            user = (User) session.createQuery("FROM User WHERE email = :email").setParameter("email", email).uniqueResult();
            if(user!=null) {
                // commit transaction
                transaction.commit();
            	return true;
            }
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return false;
    }
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public List<Hotel> getWishlist(int userId) {
		Transaction transaction = null;
		List<Hotel> result = new ArrayList<Hotel>();
		
		try {
			//Create a session
			Session session = HibernateUtil.getSessionFactory().getCurrentSession();
			// start a transaction
			transaction = session.beginTransaction();
			// get hotel list from from database
			Query query = session.createQuery("Select hotelId from Wishlist where userId=:uid").setParameter("uid", userId);
			@SuppressWarnings("unchecked")
			List<Integer> hotelIdList = (List<Integer>) query.list();
			List<Hotel> hotelList = session.createQuery("From Hotel").list();
			
			for (int i=0; i<hotelList.size(); i++) {
				//Hotel hotel = (Hotel) session.createQuery("From Hotel where hotelId=:hid").setParameter("hid", hotelid).uniqueResult();
				//hotelList.add(hotel);
				for(int j=0; j<hotelIdList.size(); j++) {
					if(hotelList.get(i).getHotelId() == hotelIdList.get(j)) {
						result.add(hotelList.get(i));
					}
				}
			}
			// commit transaction
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
	        }
            e.printStackTrace();
        }
		
		return result;
	}
}
