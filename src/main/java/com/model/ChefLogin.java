package com.model;


import org.hibernate.annotations.GeneratorType;

import javax.persistence.*;

@Entity
@Table(name = "chef")
public class ChefLogin {

    @Id
    private Integer chef_id;
    private String chef_pwd;



    public Integer getChef_id() {
        return chef_id;
    }

    public void setChef_id(Integer chef_id) {
        this.chef_id = chef_id;
    }

    public String getChef_pwd() {
        return chef_pwd;
    }

    public void setChef_pwd(String chef_pwd) {
        this.chef_pwd = chef_pwd;
    }


}
