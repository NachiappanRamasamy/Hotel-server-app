package com.dao;

import com.model.ChefLogin;
import com.model.Food;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository("chefDao")
public class ChefDAOImpl extends AbstractDAO<Integer, ChefLogin> implements ChefDAO{


    @Override
    public ChefLogin findById(Integer chefId) {
        return getByKey(chefId);
    }
}
