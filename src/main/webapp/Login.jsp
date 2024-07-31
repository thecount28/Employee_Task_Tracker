<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Tracker</title>
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
            transition: all 0.3s ease;
        }

        .container:hover {
            transform: translateY(-5px);
            box-shadow: 0 20px 40px rgba(0,0,0,0.15);
        }

        h2 {
            color: #333;
            text-align: center;
            margin-bottom: 2rem;
            font-weight: 600;
        }

        .toggle-container {
            display: flex;
            justify-content: space-between;
            margin-bottom: 2rem;
            background: #f0f2f5;
            border-radius: 50px;
            padding: 0.3rem;
        }

        .toggle-button {
            flex: 1;
            padding: 0.7rem;
            border: none;
            background: none;
            cursor: pointer;
            font-size: 0.9rem;
            transition: all 0.3s ease;
            border-radius: 50px;
        }

        .toggle-button.active {
            background: #007bff;
            color: white;
            box-shadow: 0 4px 15px rgba(0,123,255,0.3);
        }

        .input-group {
            margin-bottom: 1.5rem;
            position: relative;
        }

        .input-group input {
            width: 100%;
            padding: 0.7rem;
            border: none;
            border-bottom: 2px solid #ddd;
            font-size: 1rem;
            transition: all 0.3s ease;
        }

        .input-group input:focus {
            border-color: #007bff;
            outline: none;
        }

        .input-group label {
            position: absolute;
            top: 0.7rem;
            left: 0;
            transition: all 0.3s ease;
            pointer-events: none;
            color: #999;
        }

        .input-group input:focus + label,
        .input-group input:not(:placeholder-shown) + label {
            top: -1.2rem;
            font-size: 0.8rem;
            color: #007bff;
        }

        input[type="submit"] {
            width: 100%;
            padding: 0.8rem;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 50px;
            font-size: 1rem;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
            box-shadow: 0 4px 15px rgba(0,123,255,0.3);
        }

        .forgot-password {
            text-align: center;
            margin-top: 1rem;
        }

        .forgot-password input[type="submit"] {
            background: none;
            color: #007bff;
            padding: 0;
            font-size: 0.9rem;
        }

        .forgot-password input[type="submit"]:hover {
            text-decoration: underline;
            box-shadow: none;
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
        .container > *:nth-child(4) { animation-delay: 0.4s; }
    </style>
</head>
<body>
    <div class="container">
        <h2>Welcome</h2>
        <div class="toggle-container">
            <button id="associateBtn" class="toggle-button active" onclick="selectRole('Associate')">Associate</button>
            <button id="employeeBtn" class="toggle-button" onclick="selectRole('Employee')">Employee</button>
            <button id="adminBtn" class="toggle-button" onclick="selectRole('Admin')">Admin</button>
        </div>
        <form action="LoginServlet" method="post">
            <input type="hidden" id="role" name="role" value="Associate">
            <div class="input-group">
                <input type="text" id="username" name="username" required placeholder=" ">
                <label for="username">Username</label>
            </div>
            <div class="input-group">
                <input type="password" id="password" name="password" required placeholder=" ">
                <label for="password">Password</label>
            </div>
            <input type="submit" value="Login">
        </form>
        <form action="ForgotPasswordServlet" method="get" class="forgot-password">
            <input type="submit" value="Forgot Password?">
        </form>
    </div>
    <script>
        function selectRole(role) {
            document.getElementById('role').value = role;
            document.querySelectorAll('.toggle-button').forEach(btn => {
                btn.classList.toggle('active', btn.id === role.toLowerCase() + 'Btn');
            });
        }
    </script>
</body>
</html>