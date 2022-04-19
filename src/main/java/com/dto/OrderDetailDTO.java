package com.dto;



public class OrderDetailDTO {
    private String dish_name;
    private int quantity;
    private int table_no;

    public OrderDetailDTO(String dish_name, int quantity, int table_no) {
        this.dish_name = dish_name;
        this.quantity = quantity;
        this.table_no = table_no;
    }

    public String getDish_name() {
        return dish_name;
    }

    public void setDish_name(String dish_name) {
        this.dish_name = dish_name;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getTable_no() {
        return table_no;
    }

    public void setTable_no(int table_no) {
        this.table_no = table_no;
    }
}
