package com.designpatterns.creational.builder;

public class Application {
    public static void main(String[] args) {
        PizzaBuilder capricciosaPizzaBuilder = new CapricciosaPizzaBuilder();
        Cook cook = new Cook(capricciosaPizzaBuilder);
        cook.buildPizza();
        Pizza capricciosa = cook.getPizza();
        System.out.println(capricciosa);
    }
}
