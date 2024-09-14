<html>
<head>
    <title>Simple Calculator</title>
</head>
<body>
<h2>Calculator</h2>
<form action="calculate.do" method="post">
    <label>Number 1:</label>
    <input type="text" name="number1" /><br><br>

    <label>Number 2:</label>
    <input type="text" name="number2" /><br><br>

    <label>Operation:</label>
    <select name="operation">
        <option value="add">Add</option>
        <option value="subtract">Subtract</option>
        <option value="multiply">Multiply</option>
        <option value="divide">Divide</option>
    </select><br><br>

    <input type="submit" value="Calculate" />
</form>

<h3>Result: ${result}</h3>
<h3 style="color: red;">${error}</h3>
</body>
</html>
