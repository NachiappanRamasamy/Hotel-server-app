package com.service;

import com.dao.ChefDAO;
import com.model.ChefLogin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service("chefLoginService")
@Transactional
public class ChefLoginServiceImpl implements ChefLoginService{


    @Autowired
    private ChefDAO chefdao;
    @Override
    public ChefLogin findById(Integer chefId) {
        return chefdao.findById(chefId);
    }
}
