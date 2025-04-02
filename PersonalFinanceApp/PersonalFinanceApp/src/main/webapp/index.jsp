<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Personal Finance App</title>
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

        h1 {
            font-family: 'Poppins', sans-serif;
            color: #333;
            margin-bottom: 10px;
        }

        p {
            color: #555;
            font-size: 16px;
            margin-bottom: 30px;
        }

        .card {
            background: #ffffff;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            margin: 80px auto;
        }

        form {
            margin: 10px 0;
        }

        button {
            padding: 10px 25px;
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
    </style>
</head>
<body>
    <div class="card">
        <h1>Welcome to Personal Finance App</h1>
        <p>Manage your money like a pro.</p>

        <form action="login.jsp">
            <button type="submit">Login</button>
        </form>

        <form action="register.jsp">
            <button type="submit">Register</button>
        </form>
    </div>
</body>
</html>

