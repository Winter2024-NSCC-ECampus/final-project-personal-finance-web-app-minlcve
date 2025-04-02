package com.financeapp;

public class BudgetManager {
    private static double monthlyBudget = 0;

    public static void setBudget(double amount) {
        monthlyBudget = amount;
    }

    public static double getBudget() {
        return monthlyBudget;
    }
}
