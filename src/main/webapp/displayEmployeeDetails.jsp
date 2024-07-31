<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Employee Details</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

        body, html {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh; /* Use min-height to ensure content is centered */
            box-sizing: border-box; /* Ensure padding and borders are included in the element's total width and height */
        }

        .container {
            background: white;
            border-radius: 20px;
            box-shadow: 0 15px 30px rgba(0,0,0,0.1);
            overflow: hidden;
            width: 90%; /* Adjusted width to ensure responsiveness */
            max-width: 400px;
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
            margin-bottom: 1.5rem;
        }

        form {
            width: 100%;
        }

        label {
            display: block;
            margin-bottom: 0.5rem;
            color: #666;
            font-size: 1rem;
            text-align: left;
        }

        input[type="text"], input[type="email"], input[type="date"] {
            width: 100%;
            padding: 0.8rem;
            margin-bottom: 1rem;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1rem;
        }

        button[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 0.8rem 1.5rem;
            border: none;
            border-radius: 50px;
            cursor: pointer;
            font-size: 1rem;
            transition: all 0.3s ease;
        }

        button[type="submit"]:hover {
            background-color: #45a049;
            box-shadow: 0 4px 15px rgba(76,175,80,0.3);
        }

        .back-button {
            display: inline-block;
            margin-top: 20px;
            padding: 0.8rem 1.5rem;
            color: white;
            background-color: #f44336;
            text-decoration: none;
            border-radius: 50px;
            transition: all 0.3s ease;
        }

        .back-button:hover {
            background-color: #d32f2f;
            box-shadow: 0 4px 15px rgba(244,67,54,0.3);
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
        .container > *:nth-child(5) { animation-delay: 0.5s; }
        .container > *:nth-child(6) { animation-delay: 0.6s; }
        .container > *:nth-child(7) { animation-delay: 0.7s; }
        .container > *:nth-child(8) { animation-delay: 0.8s; }
        .container > *:nth-child(9) { animation-delay: 0.9s; }
        .container > *:nth-child(10) { animation-delay: 1s; }
        .container > *:nth-child(11) { animation-delay: 1.1s; }
    </style>
</head>
<body>
    <div class="container">
        <h2>Edit Employee Details</h2>
        <form action="UpdateEmployeeDetailsServlet" method="post">
            <input type="hidden" name="employee_id" value="${param.employee_id}">

            <label for="fullname">Full Name:</label>
            <input type="text" id="fullname" name="fullname" value="${requestScope.fullname}" required>

            <label for="username">Username:</label>
            <input type="text" id="username" name="username" value="${requestScope.username}" required>

            <label for="email">Email ID:</label>
            <input type="email" id="email" name="email" value="${requestScope.email}" required>

            <label for="phoneNumber">Phone Number:</label>
            <input type="text" id="phoneNumber" name="phoneNumber" value="${requestScope.phoneNumber}" required>

            <label for="dob">Date of Birth:</label>
            <input type="date" id="dob" name="dob" value="${requestScope.dob}" required>

            <label for="address">Address:</label>
            <input type="text" id="address" name="address" value="${requestScope.address}" required>

            <label for="dateOfJoining">Date of Joining:</label>
            <input type="date" id="dateOfJoining" name="dateOfJoining" value="${requestScope.dateOfJoining}" required>

            <label for="role">Role:</label>
            <input type="text" id="role" name="role" value="${requestScope.role}" required>

            <label for="managerAlloted">Manager Alloted:</label>
            <input type="text" id="managerAlloted" name="managerAlloted" value="${requestScope.managerAlloted}" required>

            <button type="submit">Update Details</button>
        </form>
        <a href="employeeHome.jsp" class="back-button">Back</a>
    </div>
</body>
</html>