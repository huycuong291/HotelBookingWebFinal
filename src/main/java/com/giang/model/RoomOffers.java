package com.giang.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "roomoffers")
public class RoomOffers {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private int roomId;
	private String offer;
	
	public RoomOffers() {
		roomId = 0;
		offer = "";
	}
	
	public RoomOffers(int _roomid, String _offer) {
		roomId = _roomid;
		offer = _offer;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getRoomId() {
		return roomId;
	}

	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}

	public String getOffer() {
		return offer;
	}

	public void setOffer(String offer) {
		this.offer = offer;
	}
}
