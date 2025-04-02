package com.financeapp;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class TransactionServlet extends HttpServlet {
    
    public static List<Transaction> transactions = new ArrayList<>();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String amount = request.getParameter("amount");
        String type = request.getParameter("type");
        String categoryStr = request.getParameter("category");  
        String tags = request.getParameter("tags");

        
        Transaction.Category category = Transaction.Category.valueOf(categoryStr.toUpperCase());

        Transaction t = new Transaction(amount, type, category, tags);
        transactions.add(t);

       
        response.sendRedirect("viewTransactions.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        doPost(request, response);
    }
}

