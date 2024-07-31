<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Associate Home</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

        body, html {
            height: 100%;
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .button-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 20px;
        }

        .button-container button {
            margin: 10px;
            padding: 0.8rem 2rem;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 50px;
            font-size: 1rem;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .button-container button:hover {
            background-color: #0056b3;
            box-shadow: 0 4px 15px rgba(0,123,255,0.3);
        }

        .logout-button {
            position: fixed;
            top: 10px;
            right: 10px;
            padding: 0.8rem 2rem;
            background-color: #f44336;
            color: white;
            border: none;
            border-radius: 50px;
            font-size: 1rem;
            cursor: pointer;
            z-index: 1000;
            transition: all 0.3s ease;
        }

        .logout-button:hover {
            background-color: #d32f2f;
            box-shadow: 0 4px 15px rgba(244,67,54,0.3);
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .button-container > button {
            animation: fadeIn 0.5s ease-out forwards;
            opacity: 0;
        }

        .button-container > button:nth-child(1) { animation-delay: 0.1s; }
        .button-container > button:nth-child(2) { animation-delay: 0.2s; }
        .button-container > button:nth-child(3) { animation-delay: 0.3s; }
        .button-container > button:nth-child(4) { animation-delay: 0.4s; }
        .button-container > button:nth-child(5) { animation-delay: 0.5s; }
    </style>
</head>
<body>
    <button class="logout-button" onclick="location.href='LogoutServlet'">Logout</button>

    <h2>Welcome, Associate</h2>

    <div class="button-container">
        <button onclick="location.href='AssociateDetailsServlet'">Associate Details</button>
        <button onclick="location.href='ViewEmployeeDetailsServlet'">Employee Details</button>
        <button onclick="location.href='AssignProjectServlet'">Assign Project</button>
        <button onclick="location.href='WorkUpdateServlet'">Work Update</button>
        <button onclick="location.href='EmployeeChartsServlet'">Employee Charts</button>
    </div>
</body>
</html>
