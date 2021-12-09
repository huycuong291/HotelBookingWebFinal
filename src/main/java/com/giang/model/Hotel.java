package com.giang.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "hotel")
public class Hotel {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int hotelId;
	private String hotelName;
	private String hotelLocation;
	private String hotelDescription;
	private int hotelHost;
	private int roomId;
	
	public Hotel() {
		hotelId = 0;
		hotelName = "";
		hotelLocation = "";
		hotelDescription = "";
		hotelHost = 0;
		roomId = 0;
	}

	public Hotel(String _hotelname, String _hotellocation, String _hoteldescription, int _hotelhost, int _roomid) {
		hotelName = _hotelname;
		hotelLocation = _hotellocation;
		hotelDescription = _hoteldescription;
		hotelHost = _hotelhost;
		roomId = _roomid;
	}

	public int getHotelId() {
		return hotelId;
	}

	public void setHotelId(int hotelId) {
		this.hotelId = hotelId;
	}

	public String getHotelName() {
		return hotelName;
	}

	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}

	public String getHotelLocation() {
		return hotelLocation;
	}

	public void setHotelLocation(String hotelLocation) {
		this.hotelLocation = hotelLocation;
	}

	public String getHotelDescription() {
		return hotelDescription;
	}

	public void setHotelDescription(String hotelDescription) {
		this.hotelDescription = hotelDescription;
	}

	public int getHotelHost() {
		return hotelHost;
	}

	public void setHotelHost(int hotelHost) {
		this.hotelHost = hotelHost;
	}

	public int getRoomId() {
		return roomId;
	}

	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}
}
