package com.giang.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "hoteloffers")
public class HotelOffers {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private int hotelId;
	private String offer;
	
	public HotelOffers() {
		hotelId = 0;
		offer = "";
	}
	
	public HotelOffers(int _hotelid, String _offer) {
		hotelId = _hotelid;
		offer = _offer;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getHotelId() {
		return hotelId;
	}

	public void setHotelId(int hotelId) {
		this.hotelId = hotelId;
	}

	public String getOffer() {
		return offer;
	}

	public void setOffer(String offer) {
		this.offer = offer;
	}
}
