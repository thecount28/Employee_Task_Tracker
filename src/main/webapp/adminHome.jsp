<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

        body, html {
            height: 100%;
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
        }

        .container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        h2 {
            color: #333;
            margin-bottom: 2rem;
        }

        .button-container {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 1rem;
            background: white;
            padding: 2rem;
            border-radius: 20px;
            box-shadow: 0 15px 30px rgba(0,0,0,0.1);
            transition: all 0.3s ease;
        }

        .button-container:hover {
            transform: translateY(-5px);
            box-shadow: 0 20px 40px rgba(0,0,0,0.15);
        }

        button {
            padding: 1rem;
            font-size: 1rem;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        button:hover {
            background-color: #0056b3;
            transform: translateY(-2px);
            box-shadow: 0 4px 15px rgba(0,123,255,0.3);
        }

        .logout-button {
            position: fixed;
            top: 20px;
            right: 20px;
            background-color: #dc3545;
        }

        .logout-button:hover {
            background-color: #c82333;
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
    </style>
</head>
<body>
    <button class="logout-button" onclick="location.href='LogoutServlet'">Logout</button>

    <div class="container">
        <h2>Welcome, Admin</h2>
        <div class="button-container">
            <button onclick="location.href='CreateEmployeeServlet'">Create Employee ID</button>
            <button onclick="location.href='EditEmployeeServlet'">Edit Employee ID</button>
            <button onclick="location.href='ViewEmployeeServlet'">View Employee ID</button>
            <button onclick="location.href='DeleteEmployeeServlet'">Delete Employee ID</button>
        </div>
    </div>
</body>
</html>