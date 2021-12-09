package com.giang.model;

import java.time.LocalDate;

public class Booking {
	private int bookingId;
	private int userId;
	private int hotelId;
	private LocalDate checkin;
	private LocalDate checkout;
	private int numOfAdult;
	private int numOfChild;
	private float totalFee;
	
	public Booking() {
		userId = 0;
		hotelId = 0;
		checkin = LocalDate.now();
		checkout = LocalDate.now();
		numOfAdult = 0;
		numOfChild = 0;
		totalFee = 0;
	}
	
	public Booking(int _userid, int hotelid, LocalDate _checkin, LocalDate _checkout, int _noadult, int _nochild, float _totalfee) {
		userId = _userid;
		hotelId = hotelid;
		checkin = _checkin;
		checkout = _checkout;
		numOfAdult = _noadult;
		numOfChild = _nochild;
		totalFee = _totalfee;
	}

	public int getBookingId() {
		return bookingId;
	}

	public void setBookingId(int bookingId) {
		this.bookingId = bookingId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getHotelId() {
		return hotelId;
	}

	public void setHotelId(int hotelId) {
		this.hotelId = hotelId;
	}

	public LocalDate getCheckin() {
		return checkin;
	}

	public void setCheckin(LocalDate checkin) {
		this.checkin = checkin;
	}

	public LocalDate getCheckout() {
		return checkout;
	}

	public void setCheckout(LocalDate checkout) {
		this.checkout = checkout;
	}

	public int getNumOfAdult() {
		return numOfAdult;
	}

	public void setNumOfAdult(int numOfAdult) {
		this.numOfAdult = numOfAdult;
	}

	public int getNumOfChild() {
		return numOfChild;
	}

	public void setNumOfChild(int numOfChild) {
		this.numOfChild = numOfChild;
	}

	public float getTotalFee() {
		return totalFee;
	}

	public void setTotalFee(float totalFee) {
		this.totalFee = totalFee;
	}
}
