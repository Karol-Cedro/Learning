package com.designpatterns.behavioral.builder;

public class CapricciosaPizzaBuilder extends PizzaBuilder {

    @Override
    public void addDough() {
        getPizza().setDough("thin");
    }

    @Override
    public void addCheese() {
        getPizza().setCheese("mozzarella");
    }

    @Override
    public void addMeat() {
        getPizza().setMeat("prosciutto cotto");
    }

    @Override
    public void addVegetables() {
        getPizza().setVegetables("champignons");
    }

    @Override
    public void addSauce() {
        getPizza().setSauce("tomato sauce");
    }

    @Override
    public void addToppings() {
        getPizza().setToppings("black olives");
    }
}
