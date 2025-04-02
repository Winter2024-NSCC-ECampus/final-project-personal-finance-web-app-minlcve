package com.financeapp;

public class Investment {
    private String name;
    private String amount;
    private String type;
    private String notes;

    public Investment(String name, String amount, String type, String notes) {
        this.name = name;
        this.amount = amount;
        this.type = type;
        this.notes = notes;
    }

    public String getName() {
        return name;
    }

    public String getAmount() {
        return amount;
    }

    public String getType() {
        return type;
    }

    public String getNotes() {
        return notes;
    }
}
