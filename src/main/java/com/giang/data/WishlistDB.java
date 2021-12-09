package com.giang.data;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.giang.model.User;
import com.giang.model.Wishlist;

public class WishlistDB {

	public WishlistDB() {
		// TODO Auto-generated constructor stub
	}
	
	public void saveWish(Wishlist wishlist) {
		Transaction transaction = null;
		
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // insert wishlist to database
            session.save(wishlist);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
	}
	
	public void deleteWish(int id) {
		Transaction transaction = null;
		Wishlist wl = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // delete wishlist from database
            wl = session.get(Wishlist.class, id);
            session.delete(wl);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
	}
	
	public Wishlist getWishByHotelUser(int uid, int hid) {
		Transaction transaction = null;
		Wishlist wl = null;
		
		try {
			// Create a session
			Session session = HibernateUtil.getSessionFactory().getCurrentSession();
			// start a transaction
			transaction = session.beginTransaction();
			// get wishlist from from database
			wl = (Wishlist) session.createQuery("From Wishlist where userId=:uid and hotelId=:hid").setParameter("uid", uid).setParameter("hid", hid).uniqueResult();
			// commit transaction
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
	        }
            e.printStackTrace();
        }
		
		return wl;
	}
}
