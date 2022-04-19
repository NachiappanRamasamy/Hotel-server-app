package com.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;

import com.model.Food;

@Repository("foodDao")
public class FoodDAOImpl extends AbstractDAO<Integer, Food> implements FoodDAO{


	@Override
	public void saveOrder(Food food) {
		persist(food);
	}

	@Override
	public Food findById(int id) {
		return getByKey(id);
	}

	@Override
	public List<Food> findAllFoods() {
		Criteria criteria = createEntityCriteria();
        return (List<Food>) criteria.list();
	}

}
