<%@ page import="java.util.*, com.financeapp.Transaction" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>All Transactions</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #FAE6E7;
            margin: 0;
            padding: 20px;
            text-align: center;
        }

        .card {
            background: #FFFFFF;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            max-width: 900px;
            margin: 40px auto;
        }

        h2, h3 {
            color: #333;
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
            background-color: #FF8BA0;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #FEEBED;
        }

        canvas {
            margin-top: 20px;
        }

        a {
            display: inline-block;
            margin: 30px 10px 0 10px;
            text-decoration: none;
            color: #D6336C;
            font-weight: bold;
        }

        a:hover {
            color: #A81D49;
        }
    </style>
    <script>
        function drawChart(data) {
            const canvas = document.getElementById("pieChart");
            const ctx = canvas.getContext("2d");
            const total = Object.values(data).reduce((a, b) => a + b, 0);

            let startAngle = 0;
            let colors = ['#FF8BA0', '#FFA5B0', '#FFBCD1', '#FFC8DC', '#FDDDE6', '#FEEBED', '#FFF5F7'];

            let i = 0;
            for (let category in data) {
                let sliceAngle = 2 * Math.PI * data[category] / total;
                ctx.fillStyle = colors[i % colors.length];
                ctx.beginPath();
                ctx.moveTo(150, 150);
                ctx.arc(150, 150, 120, startAngle, startAngle + sliceAngle);
                ctx.closePath();
                ctx.fill();
                startAngle += sliceAngle;
                i++;
            }
        }

        function generateChartData() {
            const data = JSON.parse(document.getElementById("chartData").textContent);
            drawChart(data);
        }
    </script>
</head>
<body onload="generateChartData()">
    <div class="card">
        <h2>All Transactions</h2>

        <%
            List<Transaction> transactions = com.financeapp.TransactionServlet.transactions;

            double totalIncome = 0;
            double totalExpenses = 0;

            Map<String, Double> categoryTotals = new LinkedHashMap<>();

            for (Transaction t : transactions) {
                double amount = Double.parseDouble(t.getAmount());
                String type = t.getType();
                String category = t.getCategory().toString();

                if ("Income".equalsIgnoreCase(type)) {
                    totalIncome += amount;
                } else {
                    totalExpenses += amount;
                }

                categoryTotals.put(category, categoryTotals.getOrDefault(category, 0.0) + amount);
            }

            out.println("<h3>Total Income: $" + totalIncome + "</h3>");
            out.println("<h3>Total Expenses: $" + totalExpenses + "</h3>");
            out.println("<h3>Net Balance: $" + (totalIncome - totalExpenses) + "</h3>");
        %>

        <h3>Spending by Category</h3>
        <canvas id="pieChart" width="300" height="300" style="border:1px solid #ccc;"></canvas>
        <script type="application/json" id="chartData">
            {
            <%
                int count = 0;
                for (Map.Entry<String, Double> entry : categoryTotals.entrySet()) {
                    count++;
            %>
            "<%= entry.getKey() %>": <%= entry.getValue() %><%= (count < categoryTotals.size()) ? "," : "" %>
            <%
                }
            %>
            }
        </script>

        <h3>📂 Total Per Category</h3>
        <table>
            <tr>
                <th>Category</th>
                <th>Total Amount</th>
            </tr>
            <%
                for (Map.Entry<String, Double> entry : categoryTotals.entrySet()) {
            %>
            <tr>
                <td><%= entry.getKey() %></td>
                <td>$<%= entry.getValue() %></td>
            </tr>
            <%
                }
            %>
        </table>

        <%
            if (transactions.isEmpty()) {
                out.println("<p>No transactions recorded yet.</p>");
            } else {
        %>
            <h3> All Transactions</h3>
            <table>
                <tr>
                    <th>Amount</th>
                    <th>Type</th>
                    <th>Category</th>
                    <th>Tags</th>
                </tr>
                <%
                    for (Transaction t : transactions) {
                %>
                <tr>
                    <td>$<%= t.getAmount() %></td>
                    <td><%= t.getType() %></td>
                    <td><%= t.getCategory().toString() %></td>
                    <td><%= t.getTags() %></td>
                </tr>
                <%
                    }
                %>
            </table>
        <%
            }
        %>

        <a href="addTransaction.jsp">➕ Add New Transaction</a>
        <a href="dashboard.jsp">🏠 Back to Dashboard</a>
    </div>
</body>
</html>

