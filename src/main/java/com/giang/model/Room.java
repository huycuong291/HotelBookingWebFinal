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
@Table(name = "room")
public class Room {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int roomId;
	private int numOfBedroom;
	private int numOfBed;
	private int maxGuest;
	private float pricePerNight;
	private String roomDescription;
	
	public Room() {
		roomId = 0;
		numOfBedroom = 0;
		numOfBed = 0;
		maxGuest = 0;
		pricePerNight = 0;
		roomDescription = "";
	}
	
	public Room(int _maxguest, int _numofbedroom, int _numofbed, float _pricepernight, String _roomdescription) {
		numOfBedroom = _numofbedroom;
		numOfBed = _numofbed;
		maxGuest = _maxguest;
		pricePerNight = _pricepernight;
		roomDescription = _roomdescription;
	}

	public int getRoomId() {
		return roomId;
	}

	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}

	public int getNumOfBedroom() {
		return numOfBedroom;
	}

	public void setNumOfBedroom(int numOfBedroom) {
		this.numOfBedroom = numOfBedroom;
	}

	public int getNumOfBed() {
		return numOfBed;
	}

	public void setNumOfBed(int numOfBed) {
		this.numOfBed = numOfBed;
	}

	public int getMaxGuest() {
		return maxGuest;
	}

	public void setMaxGuest(int maxGuest) {
		this.maxGuest = maxGuest;
	}

	public float getPricePerNight() {
		return pricePerNight;
	}

	public void setPricePerNight(float pricePerNight) {
		this.pricePerNight = pricePerNight;
	}

	public String getRoomDescription() {
		return roomDescription;
	}

	public void setRoomDescription(String roomDescription) {
		this.roomDescription = roomDescription;
	}
}
