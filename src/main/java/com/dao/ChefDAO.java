package com.dao;

import com.model.ChefLogin;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;



public interface ChefDAO {

    ChefLogin findById(Integer chefId);

}
