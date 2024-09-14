<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculation Result</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f4f8;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 30px;
            text-align: center;
            width: 400px;
        }
        h1 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }
        .result, .error {
            font-size: 18px;
            margin-top: 20px;
        }
        .error {
            color: #ff4d4d;
        }
        .result {
            color: #4caf50;
        }
        .btn-back {
            display: inline-block;
            margin-top: 30px;
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }
        .btn-back:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Calculation Result</h1>
    <% int result = (int) request.getAttribute("result"); %>
    <% String error = (String) request.getAttribute("error"); %>

    <% if (error != null) { %>
    <p class="error"><%= error %></p>
    <% } else { %>
    <p class="result">Result: <%= result %></p>
    <% } %>

    <a href="/CalculatorAmirHosein_war_exploded" class="btn-back">Go back to Calculator</a>
</div>
</body>
</html>
