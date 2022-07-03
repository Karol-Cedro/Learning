package com.designpatterns.behavioral.builder;

public abstract class PizzaBuilder {
    private Pizza pizza;

    public PizzaBuilder() {
        this.pizza = new Pizza();
    }

    public Pizza getPizza() {
        return pizza;
    }

    public abstract void addDough();

    public abstract void addCheese();

    public abstract void addMeat();

    public abstract void addVegetables();

    public abstract void addSauce();

    public abstract void addToppings();
}
