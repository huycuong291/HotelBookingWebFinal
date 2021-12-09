package com.giang.model;

import java.util.List;

public class HotelViewModel {
	public Hotel hotel;
	public List<String> hotelOffers;
	public List<String> hotelImages;
	public Room room;
	public List<String> roomOffers;
	
	public HotelViewModel() {
		// TODO Auto-generated constructor stub
	}
	
	public HotelViewModel(Hotel _hotel, List<String> _hoteloffers, List<String> _hotelimages, Room _room, List<String> _roomoffers) {
		hotel = _hotel;
		hotelOffers = _hoteloffers;
		hotelImages = _hotelimages;
		room = _room;
		roomOffers = _roomoffers;
	}

	public Hotel getHotel() {
		return hotel;
	}

	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}

	public List<String> getHotelOffers() {
		return hotelOffers;
	}

	public void setHotelOffers(List<String> hotelOffers) {
		this.hotelOffers = hotelOffers;
	}

	public List<String> getHotelImages() {
		return hotelImages;
	}

	public void setHotelImages(List<String> hotelImages) {
		this.hotelImages = hotelImages;
	}

	public Room getRoom() {
		return room;
	}

	public void setRoom(Room room) {
		this.room = room;
	}

	public List<String> getRoomOffers() {
		return roomOffers;
	}

	public void setRoomOffers(List<String> roomOffers) {
		this.roomOffers = roomOffers;
	}
}
