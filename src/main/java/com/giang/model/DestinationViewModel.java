package com.giang.model;

import java.util.List;

public class DestinationViewModel {
	public Hotel hotel;
	public Room room;
	public List<String> hotelOffers;
	public String hotelImage;
	
	public DestinationViewModel() {
		// TODO Auto-generated constructor stub
	}
	
	public DestinationViewModel(Hotel _hotel, Room _room, List<String> _hoteloffers, String _hotelimage) {
		hotel = _hotel;
		room = _room;
		hotelOffers = _hoteloffers;
		hotelImage = _hotelimage;
	}

	public Hotel getHotel() {
		return hotel;
	}

	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}

	public Room getRoom() {
		return room;
	}

	public void setRoom(Room room) {
		this.room = room;
	}

	public List<String> getHotelOffers() {
		return hotelOffers;
	}

	public void setHotelOffers(List<String> hotelOffers) {
		this.hotelOffers = hotelOffers;
	}

	public String getHotelImage() {
		return hotelImage;
	}

	public void setHotelImage(String hotelImage) {
		this.hotelImage = hotelImage;
	}
}
