package com.giang.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "hotelimages")
public class HotelImages {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private int hotelId;
	private String hotelImage;
	
	public HotelImages() {
		// TODO Auto-generated constructor stub
	}
	
	public HotelImages(int _hotelid, String _hotelimage) {
		hotelId = _hotelid;
		hotelImage = _hotelimage;
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

	public String getHotelImage() {
		return hotelImage;
	}

	public void setHotelImage(String hotelImage) {
		this.hotelImage = hotelImage;
	}
}
