package com.financeapp;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class SetBudgetServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        try {
            double amount = Double.parseDouble(request.getParameter("budget"));
            BudgetManager.setBudget(amount);
            System.out.println("✅ Budget set to: $" + amount);
            response.sendRedirect("dashboard.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<h3>Error setting budget. Please try again.</h3>");
            out.println("<a href='setBudget.jsp'>Back to Budget Page</a>");
        }
    }
}
