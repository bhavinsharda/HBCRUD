package com.tatva.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name="city")
public class City {
@Id
@Column(name="city_id")
@GeneratedValue
private Integer city_id;

@Column(name="city_name")
@GeneratedValue
private String city_name;

@ManyToOne
@JoinColumn(name="state_id", insertable = false, updatable = false)
private State statebean;

@Column(name="state_id")
private Integer state_id;

public Integer getCity_id() {
	return city_id;
}

public void setCity_id(Integer city_id) {
	this.city_id = city_id;
}

public String getCity_name() {
	return city_name;
}

public void setCity_name(String city_name) {
	this.city_name = city_name;
}

public State getStatebean() {
	return statebean;
}

public void setStatebean(State statebean) {
	this.statebean = statebean;
}

public Integer getState_id() {
	return state_id;
}

public void setState_id(Integer state_id) {
	this.state_id = state_id;
} 

}
