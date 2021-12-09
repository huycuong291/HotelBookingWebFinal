package com.giang.data;

import java.util.Properties;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;

import com.giang.model.Destination;
import com.giang.model.DestinationHotels;
import com.giang.model.Hotel;
import com.giang.model.HotelImages;
import com.giang.model.HotelOffers;
import com.giang.model.Room;
import com.giang.model.RoomOffers;
import com.giang.model.User;
import com.giang.model.Wishlist;

public class HibernateUtil {

	private static SessionFactory sessionFactory;

	public static SessionFactory getSessionFactory() {
		if (sessionFactory == null) {
			try {
				Configuration configuration = new Configuration();

				// Hibernate settings equivalent to hibernate.cfg.xml's properties
				Properties settings = new Properties();
				settings.put(Environment.DRIVER, "com.mysql.jdbc.Driver");
				settings.put(Environment.URL, "jdbc:mysql://sql6.freemysqlhosting.net/sql6457205?useSSL=false");
				settings.put(Environment.USER, "sql6457205");
				settings.put(Environment.PASS, "lr8aNHGUZB");
				settings.put(Environment.DIALECT, "org.hibernate.dialect.MySQL5Dialect");

				settings.put(Environment.SHOW_SQL, "true");

				settings.put(Environment.CURRENT_SESSION_CONTEXT_CLASS, "thread");

				settings.put(Environment.HBM2DDL_AUTO, "update"); 

				configuration.setProperties(settings);

				configuration.addAnnotatedClass(User.class);
				configuration.addAnnotatedClass(Hotel.class);
				configuration.addAnnotatedClass(Room.class);
			    configuration.addAnnotatedClass(Destination.class);
			    configuration.addAnnotatedClass(DestinationHotels.class);
			    configuration.addAnnotatedClass(HotelOffers.class);
			    configuration.addAnnotatedClass(RoomOffers.class);
			    configuration.addAnnotatedClass(HotelImages.class);
			    configuration.addAnnotatedClass(Wishlist.class);

				ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
						.applySettings(configuration.getProperties()).build();
				System.out.println("Hibernate Java Config serviceRegistry created");
				sessionFactory = configuration.buildSessionFactory(serviceRegistry);
				return sessionFactory;

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return sessionFactory;
	}
}
