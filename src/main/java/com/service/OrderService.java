package com.service;

import com.model.Order;

import java.util.List;

public interface OrderService {
    List<Order> findAllOrders();
}
