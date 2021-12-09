package com.giang.data;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.giang.model.Destination;
import com.giang.model.Hotel;
import com.giang.model.Room;

public class DestinationDB {
	
	public Destination getDestination(int id) {
		Transaction transaction = null;
		Destination destination = null;
		
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			// start a transaction
			transaction = session.beginTransaction();
			// get destination from database
			destination = session.get(Destination.class, id);
			// commit transaction
			transaction.commit();
		} catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
		
		return destination;
	}
	
	public List<Destination> getAllDestination() {
		try {
        	return HibernateUtil.getSessionFactory().openSession().createQuery("From Destination").getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
		return null;
	}
	
	@SuppressWarnings({ "rawtypes", "null", "unchecked" })
	public List<Hotel> getHotelList(int desId) {
		Transaction transaction = null;
		List<Hotel> result = new ArrayList<Hotel>();
		
		try {
			//Create a session
			Session session = HibernateUtil.getSessionFactory().getCurrentSession();
			// start a transaction
			transaction = session.beginTransaction();
			// get hotel list from from database
			Query query = session.createQuery("select hotelId from DestinationHotels where destinationId=:desId").setParameter("desId", desId);
			@SuppressWarnings("unchecked")
			List<Integer> hotelIdList = (List<Integer>) query.list();
			List<Hotel> hotelList = session.createQuery("From Hotel").list();
			
			for (int i=0; i<hotelList.size(); i++) {
				//Hotel hotel = (Hotel) session.createQuery("From Hotel where hotelId=:hid").setParameter("hid", hotelList.get(i).getHotelId()).uniqueResult();
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
