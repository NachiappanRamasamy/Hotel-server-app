package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="orderr")
public class Order {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int order_id;
	private int table_no;
	private int ordered_food_id;//many to one
	private int quantity;

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public int getTable_no() {
		return table_no;
	}

	public void setTable_no(int table_no) {
		this.table_no = table_no;
	}

	public int getOrdered_food_id() {
		return ordered_food_id;
	}

	public void setOrdered_food_id(int ordered_food_id) {
		this.ordered_food_id = ordered_food_id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	@Override
	public String toString() {
		return "Order{" +
				"order_id=" + order_id +
				", table_no=" + table_no +
				", ordered_food_id=" + ordered_food_id +
				", quantity=" + quantity +
				'}';
	}
}
