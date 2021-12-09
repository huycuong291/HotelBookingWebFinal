package com.giang.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "destinationhotels")
public class DestinationHotels {
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="id")
    private int id;
	private int destinationId;
	private int hotelId;
	
	public DestinationHotels() {
		// TODO Auto-generated constructor stub
	}
	
	public DestinationHotels(int _destinationid, int _hotelid) {
		destinationId = _destinationid;
		hotelId = _hotelid;
	}

	public int getDestinationId() {
		return destinationId;
	}

	public void setDestinationId(int destinationId) {
		this.destinationId = destinationId;
	}

	public int getHotelId() {
		return hotelId;
	}

	public void setHotelId(int hotelId) {
		this.hotelId = hotelId;
	}
}
