package com.designpatterns.behavioral.factory;

public class Application {
    public static void main(String[] args) {
        Cookies strawberry = CookiesFactory.createCookies("Strawberry");
        Cookies chocolate = CookiesFactory.createCookies("Chocolate");
        System.out.println(strawberry.getName());
        System.out.println(chocolate.getName());
    }
}
