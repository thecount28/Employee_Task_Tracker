<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Employee</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

        body, html {
            height: 100%;
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
        }

        .container {
            background: white;
            border-radius: 20px;
            box-shadow: 0 15px 30px rgba(0,0,0,0.1);
            overflow: hidden;
            width: 400px;
            max-width: 100%;
            padding: 2rem;
            text-align: center;
            transition: all 0.3s ease;
        }

        .container:hover {
            transform: translateY(-5px);
            box-shadow: 0 20px 40px rgba(0,0,0,0.15);
        }

        h2 {
            color: #333;
            font-size: 1.5rem;
            font-weight: 600;
            margin-bottom: 1rem;
        }

        label {
            display: block;
            text-align: left;
            margin-bottom: 5px;
            color: #666;
            font-size: 1rem;
        }

        input[type="text"] {
            width: calc(100% - 12px);
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #ff4c4c;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 50px;
            cursor: pointer;
            font-size: 1rem;
            transition: all 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #e60000;
            box-shadow: 0 4px 15px rgba(255, 76, 76, 0.3);
        }

        .back-button {
            margin-top: 20px;
        }

        .back-button a {
            text-decoration: none;
            background-color: #4CAF50;
            padding: 10px 20px;
            color: white;
            border-radius: 50px;
            font-size: 1rem;
            transition: all 0.3s ease;
        }

        .back-button a:hover {
            background-color: #45a049;
            box-shadow: 0 4px 15px rgba(76, 175, 80, 0.3);
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .container > * {
            animation: fadeIn 0.5s ease-out forwards;
            opacity: 0;
        }

        .container > *:nth-child(1) { animation-delay: 0.1s; }
        .container > *:nth-child(2) { animation-delay: 0.2s; }
        .container > *:nth-child(3) { animation-delay: 0.3s; }
    </style>
</head>
<body>
    <div class="container">
        <h2>Delete Employee</h2>
        <form action="DeleteEmployeeServlet" method="post">
            <label for="employee_id">Employee ID:</label>
            <input type="text" id="employee_id" name="employee_id" required><br>
            <input type="submit" value="Delete Employee">
        </form>
        <div class="back-button">
            <a href="adminHome.jsp">Back</a>
        </div>
    </div>
</body>
</html>
