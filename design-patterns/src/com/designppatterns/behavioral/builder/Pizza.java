package com.designppatterns.behavioral.builder;

public class Pizza {
    private String dough;
    private String cheese;
    private String meat;
    private String vegetables;
    private String sauce;
    private String toppings;

    public String getDough() {
        return dough;
    }

    public void setDough(String dough) {
        this.dough = dough;
    }

    public String getCheese() {
        return cheese;
    }

    public void setCheese(String cheese) {
        this.cheese = cheese;
    }

    public String getMeat() {
        return meat;
    }

    public void setMeat(String meat) {
        this.meat = meat;
    }

    public String getVegetables() {
        return vegetables;
    }

    public void setVegetables(String vegetables) {
        this.vegetables = vegetables;
    }

    public String getSauce() {
        return sauce;
    }

    public void setSauce(String sauce) {
        this.sauce = sauce;
    }

    public String getToppings() {
        return toppings;
    }

    public void setToppings(String toppings) {
        this.toppings = toppings;
    }

    @Override
    public String toString() {
        return "Pizza{" +
                "dough='" + dough + '\'' +
                ", cheese='" + cheese + '\'' +
                ", meat='" + meat + '\'' +
                ", vegetables='" + vegetables + '\'' +
                ", sauce='" + sauce + '\'' +
                ", toppings='" + toppings + '\'' +
                '}';
    }
}
