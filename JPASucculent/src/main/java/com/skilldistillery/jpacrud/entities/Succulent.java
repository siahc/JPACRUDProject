package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
public class Succulent {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="common_name")
	private String commonName;
	
	@Column(name="scientific_name")
	private String scientificName;
	
	private String description;
	
	private Double price;
	
	
	@Column(name="watering_needs")
	private String wateringNeeds;


	public Succulent() {
		super();
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getCommonName() {
		return commonName;
	}


	public void setCommonName(String commonName) {
		this.commonName = commonName;
	}


	public String getScientificName() {
		return scientificName;
	}


	public void setScientificName(String scientificName) {
		this.scientificName = scientificName;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public Double getPrice() {
		return price;
	}
	public String formatPrice() {
		return String.format("$%.2f",price);
	}


	public void setPrice(Double price) {
		this.price = price;
	}


	public String getWateringNeeds() {
		return wateringNeeds;
	}


	public void setWateringNeeds(String wateringNeeds) {
		this.wateringNeeds = wateringNeeds;
	}


	@Override
	public String toString() {
		return "Succulent [id=" + id + ", commonName=" + commonName + ", scientificName=" + scientificName
				+ ", description=" + description + ", price=" + price + ", wateringNeeds=" + wateringNeeds + "]";
	}
	
	
	
	
	
}
