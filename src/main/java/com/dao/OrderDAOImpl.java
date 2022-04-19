package com.dao;

import com.model.Food;
import com.model.Order;
import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository("orderDao")
public class OrderDAOImpl extends AbstractDAO<Integer, Order> implements OrderDAO {

    @Override
    public List<Order> findAllOrders() {
        Criteria criteria = createEntityCriteria();
        return (List<Order>) criteria.list();
    }
}
