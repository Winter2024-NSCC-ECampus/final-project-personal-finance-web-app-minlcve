package com.financeapp;

public class Transaction {
    private String amount;
    private String type;
    private Category category;
    private String tags;

    
    public enum Category {
        GROCERIES, PERSONAL, ENTERTAINMENT, UTILITIES
    }

    
    public Transaction(String amount, String type, Category category, String tags) {
        this.amount = amount;
        this.type = type;
        this.category = category;
        this.tags = tags;
    }

    
    public Transaction(String amount, String type, String category, String tags) {
        this.amount = amount;
        this.type = type;
        this.category = Category.valueOf(category.toUpperCase());
        this.tags = tags;
    }

    public String getAmount() {
        return amount;
    }

    public String getType() {
        return type;
    }

    public Category getCategory() {
        return category;
    }

    public String getTags() {
        return tags;
    }
}
