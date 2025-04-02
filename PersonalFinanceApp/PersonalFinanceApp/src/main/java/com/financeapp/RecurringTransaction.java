package com.financeapp;

public class RecurringTransaction {
    private String amount;
    private String type;
    private String category;
    private String tags;

    public RecurringTransaction(String amount, String type, String category, String tags) {
        this.amount = amount;
        this.type = type;
        this.category = category;
        this.tags = tags;
    }

    public Transaction toTransaction() {
        return new Transaction(amount, type, category, tags);
    }
}
