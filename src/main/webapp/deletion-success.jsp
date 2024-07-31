<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Deletion Successful</title>
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

        .success-message {
            color: #28a745;
            font-size: 1.5rem;
            font-weight: 600;
            margin-bottom: 1rem;
        }

        .account-details {
            color: #666;
            font-size: 1rem;
            margin-bottom: 2rem;
        }

        .redirect-link {
            display: inline-block;
            padding: 0.8rem 2rem;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 50px;
            font-size: 1rem;
            transition: all 0.3s ease;
        }

        .redirect-link:hover {
            background-color: #0056b3;
            box-shadow: 0 4px 15px rgba(0,123,255,0.3);
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
        <h2 class="success-message">Account Deletion Successful!</h2> 
        <div class="account-details">
            <p>Your account has been deleted successfully.</p>
        </div>
        <a href="adminHome.jsp" class="redirect-link">Go Back to Home</a>
    </div>
</body>
</html>
