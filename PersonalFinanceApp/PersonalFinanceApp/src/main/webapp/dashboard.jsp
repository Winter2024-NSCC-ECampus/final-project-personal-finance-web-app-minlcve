<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.financeapp.*, java.util.*" %>
<%
    RecurringManager.applyRecurringTransactions();
    double totalExpenses = 0;
    for (Transaction t : TransactionServlet.transactions) {
        if ("Expense".equalsIgnoreCase(t.getType())) {
            totalExpenses += Double.parseDouble(t.getAmount());
        }
    }
    double budget = BudgetManager.getBudget();
    double remaining = budget - totalExpenses;
%>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans&family=Poppins:wght@500&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Open Sans', sans-serif;
            background: #FAE6E7;
            margin: 0;
            padding: 20px;
            text-align: center;
            color: #333;
        }

        h1, h3 {
            font-family: 'Poppins', sans-serif;
        }

        .card {
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            max-width: 600px;
            margin: 30px auto;
        }

        ul {
            list-style: none;
            padding-left: 0;
            text-align: left;
            display: inline-block;
        }

        li {
            margin: 10px 0;
        }

        a {
            text-decoration: none;
            color: #cc3366;
            font-weight: bold;
        }

        a:hover {
            color: #b2224d;
        }

        .warning {
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="card">
        <h1>Welcome to Your Dashboard!</h1>

        <h3>Monthly Budget Overview</h3>
        <p><strong>Monthly Budget:</strong> $<%= budget %></p>
        <p><strong>Total Expenses:</strong> $<%= totalExpenses %></p>
        <p><strong>Remaining:</strong> $<%= remaining %></p>

        <% if (budget > 0 && remaining < 50) { %>
            <p class="warning">⚠️ Warning: You're close to your budget limit!</p>
        <% } %>
    </div>

    <div class="card">
        <h3>Quick Actions</h3>
        <ul>
            <li><a href="addTransaction.jsp">➕ Add Transaction</a></li>
            <li><a href="viewTransactions.jsp">📋 View All Transactions</a></li>
            <li><a href="setBudget.jsp">💰 Set Monthly Budget</a></li>
            <li><a href="addRecurring.jsp">♻️ Add Recurring Income/Expense</a></li>
            <li><a href="addInvestment.jsp">📈 Add Investment</a></li>
            <li><a href="viewInvestments.jsp">📊 View Investments</a></li>
        </ul>
    </div>

    <a href="index.jsp">🚪 Log Out</a>
</body>
</html>

