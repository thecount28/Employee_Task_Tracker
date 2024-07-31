<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Project Assigned Successfully</title>
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
            color: #4CAF50;
            font-size: 1.5rem;
            font-weight: 600;
            margin-bottom: 1rem;
        }

        p {
            color: #666;
            margin-bottom: 2rem;
        }

        .redirect-link {
            display: inline-block;
            padding: 0.8rem 2rem;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 50px;
            font-size: 1rem;
            transition: all 0.3s ease;
        }

        .redirect-link:hover {
            background-color: #45a049;
            box-shadow: 0 4px 15px rgba(76, 175, 80, 0.3);
        }

        .back-button-container {
            position: absolute;
            top: 20px;
            right: 20px;
        }

        .back-button {
            background-color: #f44336;
            color: white;
            border: none;
            border-radius: 50px;
            font-size: 1rem;
            cursor: pointer;
            padding: 0.8rem 2rem;
            text-align: center;
            text-decoration: none;
            transition: all 0.3s ease;
        }

        .back-button:hover {
            background-color: #d32f2f;
            box-shadow: 0 4px 15px rgba(244, 67, 54, 0.3);
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
        <h2>Project Assigned Successfully!</h2>
        <p>The project has been successfully assigned to the employee.</p>
        <a href="associateHome.jsp" class="redirect-link">Go back to Home</a>
    </div>
    <div class="back-button-container">
        <button class="back-button" onclick="window.location.href='associateHome.jsp'">Back</button>
    </div>
</body>
</html>
