package com.financeapp;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

      
        if ("admin".equals(username) && "admin".equals(password)) {
            response.sendRedirect("dashboard.jsp"); 
        } else {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<h3>Login failed. Try again.</h3>");
            out.println("<a href='login.jsp'>Back to Login</a>");
        }
    }
}
