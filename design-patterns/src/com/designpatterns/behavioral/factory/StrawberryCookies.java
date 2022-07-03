package com.designpatterns.behavioral.factory;

public class StrawberryCookies implements Cookies {

    private String name;
    private double price;
    private int calories;

    public StrawberryCookies(double price, int calories) {
        this.name = "Strawberry Cookies";
        this.price = price;
        this.calories = calories;
    }

    @Override
    public String getName() {
        return name;
    }

    @Override
    public double getPrice() {
        return price;
    }

    @Override
    public int getCalories() {
        return calories;
    }
}
