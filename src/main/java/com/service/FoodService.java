package com.service;

import java.util.List;

import com.model.Food;

public interface FoodService {
	
	Food findById(int id);

    void saveOrder(Food food);
    
    List<Food> findAllFoods();
}
