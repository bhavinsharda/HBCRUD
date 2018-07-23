package com.tatva.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="address")
public class Address {
	@Id
	@Column(name="address_id")
	@GeneratedValue
	private Integer address_id;

	@Column(name="street")
	@GeneratedValue
	private String street;

	@Column(name="city")
	@GeneratedValue
	private String city;

	@Column(name="state")
	@GeneratedValue
	private String state;

	@Column(name="country")
	@GeneratedValue
	private String country;

	public Address() {

	}  


	public Address(String street, String city, String state, String country) {
		super();
		this.street = street;
		this.city = city;
		this.state = state;
		this.country = country;
	}

	public Integer getAddress_id() {
		return address_id;
	}

	public void setAddress_id(Integer address_id) {
		this.address_id = address_id;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}





}
