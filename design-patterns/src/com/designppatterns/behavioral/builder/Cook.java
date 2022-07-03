package com.designppatterns.behavioral.builder;

public class Cook {
    private PizzaBuilder pizzaBuilder;

    public Cook(PizzaBuilder pizzaBuilder) {
        this.pizzaBuilder = pizzaBuilder;
    }

    public void buildPizza() {
        pizzaBuilder.addDough();
        pizzaBuilder.addCheese();
        pizzaBuilder.addMeat();
        pizzaBuilder.addVegetables();
        pizzaBuilder.addSauce();
        pizzaBuilder.addToppings();
    }

    public Pizza getPizza(){
        return pizzaBuilder.getPizza();
    }
}
