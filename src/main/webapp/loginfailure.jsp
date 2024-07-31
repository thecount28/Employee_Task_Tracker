<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Failed</title>
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

        .failure-container {
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

        .failure-container:hover {
            transform: translateY(-5px);
            box-shadow: 0 20px 40px rgba(0,0,0,0.15);
        }

        .failure-header {
            color: #dc3545;
            font-size: 1.5rem;
            font-weight: 600;
            margin-bottom: 1rem;
        }

        .failure-message {
            color: #666;
            margin-bottom: 2rem;
        }

        .retry-button {
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 50px;
            padding: 0.8rem 2rem;
            font-size: 1rem;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .retry-button:hover {
            background-color: #0056b3;
            box-shadow: 0 4px 15px rgba(0,123,255,0.3);
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .failure-container > * {
            animation: fadeIn 0.5s ease-out forwards;
            opacity: 0;
        }

        .failure-container > *:nth-child(1) { animation-delay: 0.1s; }
        .failure-container > *:nth-child(2) { animation-delay: 0.2s; }
        .failure-container > *:nth-child(3) { animation-delay: 0.3s; }
    </style>
</head>
<body>
    <div class="failure-container">
        <div class="failure-header">Login Failed</div>
        <div class="failure-message">
            <p>Invalid username or password.</p>
            <p>Please try again.</p>
        </div>
        <form action="Login.jsp">
            <button class="retry-button" type="submit">Retry</button>
        </form>
    </div>
</body>
</html>