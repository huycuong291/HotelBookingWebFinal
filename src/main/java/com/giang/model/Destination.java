package com.giang.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.SecondaryTable;
import javax.persistence.Table;


@Entity
@Table(name = "destination")
public class Destination {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int desId;
	private String desName;
	private String desImage;
	private String desLocation;
	
	public Destination() {
		desId = 0;
		desName = "";
		desImage = "";
		desLocation = "";
	}

	public Destination(String _desname, String _desimage, String _deslocation) {
		desName = _desname;
		desImage = _desimage;
		desLocation = _deslocation;
	}

	public int getDesId() {
		return desId;
	}

	public void setDesId(int desId) {
		this.desId = desId;
	}

	public String getDesName() {
		return desName;
	}

	public void setDesName(String desName) {
		this.desName = desName;
	}

	public String getDesImage() {
		return desImage;
	}

	public void setDesImage(String desImage) {
		this.desImage = desImage;
	}

	public String getDesLocation() {
		return desLocation;
	}

	public void setDesLocation(String desLocation) {
		this.desLocation = desLocation;
	}
}
