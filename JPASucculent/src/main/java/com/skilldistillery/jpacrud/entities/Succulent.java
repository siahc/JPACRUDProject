package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Succulent {
	
	public String getCommonName() {
		return commonName;
	}

	public void setCommonName(String commonName) {
		this.commonName = commonName;
	}

	@Override
	public String toString() {
		return "Succulent [id=" + id + ", commonName=" + commonName + "]";
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="common_name")
	private String commonName;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	public Succulent() {
		super();
	}

}
