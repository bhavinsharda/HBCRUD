package com.tatva.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;

import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "country", catalog = "hbcrud")
public class Country {
@Id
@Column(name="country_id")
@GeneratedValue
private Integer country_id;

@Column(name="country_name")
@GeneratedValue
private String country_name;

public Integer getCountry_id() {
	return country_id;
}

public void setCountry_id(Integer country_id) {
	this.country_id = country_id;
}

public String getCountry_name() {
	return country_name;
}

public void setCountry_name(String country_name) {
	this.country_name = country_name;
}
}
