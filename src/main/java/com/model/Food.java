package com.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="food")
public class Food {
	
	@Id
	private int food_id;
	private String food_name;
	private int food_price;
	//todo
//	Enume

	public int getFood_id() {
		return food_id;
	}
	public void setFood_id(int food_id) {
		this.food_id = food_id;
	}
	public String getFood_name() {
		return food_name;
	}
	public void setFood_name(String food_name) {
		this.food_name = food_name;
	}
	public int getFood_price() {
		return food_price;
	}
	public void setFood_price(int food_price) {
		this.food_price = food_price;
	}

	@Override
	public String toString() {
		return "Food{" +
				"food_id=" + food_id +
				", food_name='" + food_name + '\'' +
				", food_price=" + food_price +
				'}';
	}
}
