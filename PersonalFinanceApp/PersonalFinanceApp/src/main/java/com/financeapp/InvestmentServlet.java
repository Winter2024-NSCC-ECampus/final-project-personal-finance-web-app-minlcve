package com.financeapp;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class InvestmentServlet extends HttpServlet {
    public static List<Investment> investments = new ArrayList<>();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String name = request.getParameter("name");
        String amount = request.getParameter("amount");
        String type = request.getParameter("type");
        String notes = request.getParameter("notes");

        Investment inv = new Investment(name, amount, type, notes);
        investments.add(inv);

        response.sendRedirect("viewInvestments.jsp");
    }
}
