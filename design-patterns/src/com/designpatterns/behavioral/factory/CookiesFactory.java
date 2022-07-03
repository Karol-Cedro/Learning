package com.designpatterns.behavioral.factory;

public class CookiesFactory {

    public static Cookies createCookies(String typeOfCookies) {
        switch (typeOfCookies) {
            case "Strawberry":
                return new StrawberryCookies(5.00, 389);

            case "Chocolate":
                return new ChocolateCookies(5.50, 420);
            default:
                return null;
        }
    }
}
