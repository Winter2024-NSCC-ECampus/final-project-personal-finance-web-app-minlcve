package com.financeapp;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class AddRecurringServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String amount = request.getParameter("amount");
        String type = request.getParameter("type");
        String category = request.getParameter("category");
        String tags = request.getParameter("tags");

        RecurringTransaction rt = new RecurringTransaction(amount, type, category, tags);
        RecurringManager.addRecurring(rt);

        response.sendRedirect("dashboard.jsp");
    }
}
