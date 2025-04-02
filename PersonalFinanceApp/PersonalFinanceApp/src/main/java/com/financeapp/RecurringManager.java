package com.financeapp;

import java.util.*;

public class RecurringManager {
    private static List<RecurringTransaction> recurringList = new ArrayList<>();
    private static boolean appliedThisSession = false;

    public static void addRecurring(RecurringTransaction rt) {
        recurringList.add(rt);
    }

    public static List<RecurringTransaction> getRecurringList() {
        return recurringList;
    }

    public static void applyRecurringTransactions() {
        if (!appliedThisSession) {
            for (RecurringTransaction rt : recurringList) {
                TransactionServlet.transactions.add(rt.toTransaction());
            }
            appliedThisSession = true;
        }
    }
}
