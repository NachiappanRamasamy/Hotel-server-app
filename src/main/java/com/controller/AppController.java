package com.controller;

import java.util.*;

//import javax.validation.Valid;


import com.dto.OrderDetailDTO;
import com.model.ChefLogin;
import com.model.Order;

import com.service.ChefLoginService;
import com.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import com.model.Food;
import com.service.FoodService;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/")
@ComponentScan("com") 
public class AppController {
	
	
	@Autowired
	FoodService foodService;

    @Autowired
    OrderService orderService;

    @Autowired(required = true)
    ChefLoginService loginService;



    @RequestMapping(value = {"/"},method = RequestMethod.GET)
    public ModelAndView welcomePage(){

        ModelAndView mav=new ModelAndView();
        mav.setViewName("welcome");
        return mav;
    }



	@RequestMapping(value = { "/menu"}, method = RequestMethod.GET)
    public ModelAndView listFoods() {
        List<Food> foods = foodService.findAllFoods();
//        model.addAttribute("foods", foods);
        ModelAndView mav=new ModelAndView();
        mav.setViewName("menu");
        mav.addObject("foods",foods);
        return mav;
    }



    @RequestMapping(value = { "/menu"},method = RequestMethod.POST)


    public ModelAndView  saveOrder( ){

        ModelAndView mav=new ModelAndView();
        mav.setViewName("success");
        return mav;
    }

//
//    @RequestMapping(value = { "/orders", "/c" }, method = RequestMethod.GET)
//    public String listEmployees(ModelMap model) {
//        System.out.println("...................called................");
//        List<Order> orders = orderService.findAllOrders();
//        System.out.println(orders);
//        List<Food> foods = foodService.findAllFoods();
//        System.out.println(foods);
//
//        model.addAttribute("orders", orders);
//        return "chef";
//    }


    @RequestMapping( value = { "/chef-login" },method = RequestMethod.GET )

    public ModelAndView  login() {
        ChefLogin chef= new ChefLogin();
//        model.addAttribute("chef", chef);

        ModelAndView mav=new ModelAndView();
        mav.setViewName("chef-login");
        mav.addObject("chef",chef);

        return mav;
    }

    @RequestMapping(value = { "/chef-login" }, method = RequestMethod.POST)
    public ModelAndView ordersPage(ChefLogin chef){
        Integer chefId=chef.getChef_id();
        ChefLogin chefdata= loginService.findById(Integer.valueOf(chefId));
        ModelAndView mav=new ModelAndView();
        if(chef.getChef_pwd().equals(chefdata.getChef_pwd())){
            mav.setViewName("redirect:/orders");
        }
        else{
            mav.setViewName("redirect:/error");
        }
        return mav;
    }
    @RequestMapping(value = "/orders",method = RequestMethod.GET)
    public ModelAndView orderPage(ModelMap model){
        List<Food> foods = foodService.findAllFoods();
        List<Order> orders = orderService.findAllOrders();
//        model.addAttribute("orders",orders);
//        model.addAttribute("orderService",orderService);


        List<OrderDetailDTO> orderDetails=new ArrayList<>();
        for(Food food:foods){
            for (Order order:orders){
                if(food.getFood_id()==order.getOrdered_food_id()){

//                    System.out.println(food.getFood_name()+" "+order.getQuantity()+" "+order.getTable_no());
                    orderDetails.add(new OrderDetailDTO(food.getFood_name(),order.getQuantity(),order.getTable_no()));
                }
            }
        }
//        Sort based on table number.
        Collections.sort(orderDetails, new Comparator<OrderDetailDTO>() {
            @Override
            public int compare(OrderDetailDTO o1, OrderDetailDTO o2) {
                return o1.getTable_no()-o2.getTable_no();
            }
        });
//        model.addAttribute("orders",orderDetails);
        ModelAndView mav=new ModelAndView();
        mav.setViewName("orders");
        mav.addObject("orders",orderDetails);

        return mav;
    }


}

