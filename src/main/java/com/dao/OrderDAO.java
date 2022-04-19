package com.dao;

import java.util.List;

import com.model.Order;


public interface OrderDAO {

	List<Order> findAllOrders();
}

