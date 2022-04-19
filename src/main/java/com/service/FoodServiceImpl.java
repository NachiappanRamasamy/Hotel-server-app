package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.FoodDAO;
import com.model.Food;

@Service("foodService")
@Transactional
public class FoodServiceImpl implements FoodService{
	
	@Autowired
	private FoodDAO dao;

	@Override
	public void saveOrder(Food food) {
		dao.saveOrder(food);
	}

	@Override
	public Food findById(int id) {		
		return dao.findById(id);
	}
	
	@Override
	public List<Food> findAllFoods() {
		return dao.findAllFoods();
	}

}
