package com.designpatterns.creational.factory;

public class ChocolateCookies implements Cookies{

    private String name;
    private double price;
    private int calories;

    public ChocolateCookies(double price, int calories) {
        this.name = "Chocolate Cookies";
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
