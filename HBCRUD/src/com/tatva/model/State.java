package com.tatva.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name="state")
public class State {
@Id
@Column(name="state_id")
@GeneratedValue
private Integer state_id;

@Column(name="state_name")
@GeneratedValue
private String state_name;

@ManyToOne
@JoinColumn(name="country_id", insertable = false, updatable = false)
private Country countrybean;

@Column(name="country_id")
private Integer country_id;

public Integer getState_id() {
	return state_id;
}

public void setState_id(Integer state_id) {
	this.state_id = state_id;
}

public String getState_name() {
	return state_name;
}

public void setState_name(String state_name) {
	this.state_name = state_name;
}

public Country getCountrybean() {
	return countrybean;
}

public void setCountrybean(Country countrybean) {
	this.countrybean = countrybean;
}

public Integer getCountry_id() {
	return country_id;
}

public void setCountry_id(Integer country_id) {
	this.country_id = country_id;
}

}
