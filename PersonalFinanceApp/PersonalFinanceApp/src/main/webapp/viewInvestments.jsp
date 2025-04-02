<%@ page import="java.util.*, com.financeapp.Investment" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>My Investments</title>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans&family=Poppins:wght@500&display=swap" rel="stylesheet">
    
    <style>
        body {
            font-family: 'Open Sans', sans-serif;
            background-color: #FAE6E7;
            margin: 0;
            padding: 20px;
            text-align: center;
            color: #333;
        }

        h1, h2, h3 {
            font-family: 'Poppins', sans-serif;
        }

        .card {
            background: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            max-width: 800px;
            margin: 40px auto;
        }

        h2 {
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #cc3366;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        p {
            font-size: 16px;
            color: #555;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            margin-right: 10px;
            text-decoration: none;
            color: #cc3366;
            font-weight: bold;
        }

        a:hover {
            color: #b2224d;
        }
    </style>
</head>
<body>
    <div class="card">
        <h2>Tracked Investments</h2>

        <%
            List<Investment> investments = com.financeapp.InvestmentServlet.investments;
            if (investments.isEmpty()) {
        %>
            <p>No investments tracked yet.</p>
        <%
            } else {
        %>
            <table>
                <tr>
                    <th>Name</th>
                    <th>Amount</th>
                    <th>Type</th>
                    <th>Notes</th>
                </tr>
                <%
                    for (Investment i : investments) {
                %>
                <tr>
                    <td><%= i.getName() %></td>
                    <td>$<%= i.getAmount() %></td>
                    <td><%= i.getType() %></td>
                    <td><%= i.getNotes() %></td>
                </tr>
                <%
                    }
                %>
            </table>
        <%
            }
        %>

        <a href="addInvestment.jsp">➕ Add More Investments</a>
        <a href="dashboard.jsp">🏠 Back to Dashboard</a>
    </div>
</body>
</html>

