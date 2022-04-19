package com.dao;

import java.util.List;

import com.model.Food;


public interface FoodDAO {

	Food findById(int id);

    void saveOrder(Food food);
     
    List<Food> findAllFoods();

}

