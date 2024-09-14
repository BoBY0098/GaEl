<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Calculator</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f9;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }
    .calculator-container {
      background-color: #fff;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      text-align: center;
      max-width: 400px;
      width: 100%;
    }
    h1 {
      color: #333;
      font-size: 24px;
      margin-bottom: 20px;
    }
    .input-group {
      margin-bottom: 15px;
    }
    label {
      display: block;
      font-weight: bold;
      margin-bottom: 5px;
      color: #555;
    }
    input, select {
      width: 100%;
      padding: 10px;
      border-radius: 5px;
      border: 1px solid #ddd;
      font-size: 16px;
      box-sizing: border-box;
    }
    .btn-submit {
      background-color: #4CAF50;
      color: white;
      border: none;
      padding: 10px 20px;
      font-size: 18px;
      cursor: pointer;
      width: 100%;
      margin-top: 20px;
      border-radius: 5px;
    }
    .btn-submit:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>
<div class="calculator-container">
  <h1>Simple Calculator</h1>
  <html:form action="/calculate" styleId="calculatorForm">
    <div class="input-group">
      <label>Number 1</label>
      <html:text property="number1" style="width:100%" />
    </div>
    <div class="input-group">
      <label>Number 2</label>
      <html:text property="number2" style="width:100%" />
    </div>
    <div class="input-group">
      <label>Operation</label>
      <html:select property="operation" style="width:100%">
        <html:option value="add">Add</html:option>
        <html:option value="subtract">Subtract</html:option>
        <html:option value="multiply">Multiply</html:option>
        <html:option value="divide">Divide</html:option>
      </html:select>
    </div>
    <html:submit value="Calculate" styleClass="btn-submit"/>
  </html:form>
</div>
</body>
</html>
