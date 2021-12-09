package com.giang.model;

public class WishlistViewModel {
	private Hotel hotel;
	private String hotelImage;
	
	public WishlistViewModel(Hotel _hotel, String _hotelimage) {
		hotel = _hotel;
		hotelImage = _hotelimage;
	}

	public Hotel getHotel() {
		return hotel;
	}

	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}

	public String getHotelImage() {
		return hotelImage;
	}

	public void setHotelImage(String hotelImage) {
		this.hotelImage = hotelImage;
	}
}
