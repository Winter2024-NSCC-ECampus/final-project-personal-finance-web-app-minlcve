<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Recurring Transaction</title>
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

        h1, h2, h3 {
            font-family: 'Poppins', sans-serif;
        }

        .card {
            background: #ffffff;
            padding: 20px 30px;
            border-radius: 12px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            max-width: 500px;
            margin: 40px auto;
        }

        h2 {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="number"],
        select {
            width: 90%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 14px;
        }

        button {
            margin-top: 20px;
            padding: 10px 20px;
            font-size: 16px;
            background-color: #cc3366;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
        }

        button:hover {
            background-color: #b2224d;
        }

        a {
            display: inline-block;
            margin-top: 20px;
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
        <h2>Add Monthly Recurring Transaction</h2>

        <form action="AddRecurringServlet" method="post">
            <label>Amount:</label>
            <input type="number" name="amount" step="0.01" required>

            <label>Type:</label>
            <select name="type">
                <option value="Income">Income</option>
                <option value="Expense">Expense</option>
            </select>

            <label>Category:</label>
            <input type="text" name="category" required>

            <label>Tags:</label>
            <input type="text" name="tags">

            <button type="submit">Add Recurring</button>
        </form>

        <a href="dashboard.jsp">Back to Dashboard</a>
    </div>
</body>
</html>
