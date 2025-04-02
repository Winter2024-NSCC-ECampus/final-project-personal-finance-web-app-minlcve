package com.financeapp;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("<h2>Registration Successful!</h2>");
        out.println("<p>Welcome, " + fullname + "!</p>");
        out.println("<a href='login.jsp'>Go to Login</a>");
    }
}
