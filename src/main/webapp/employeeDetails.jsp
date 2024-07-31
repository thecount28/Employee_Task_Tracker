<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Get Employee Details</title>
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
            min-height: 100vh;
            box-sizing: border-box;
        }

        .form-container {
            background: white;
            border-radius: 20px;
            box-shadow: 0 15px 30px rgba(0,0,0,0.1);
            overflow: hidden;
            width: 90%;
            max-width: 600px;
            padding: 2rem;
            text-align: center;
            transition: all 0.3s ease;
        }

        .form-container:hover {
            transform: translateY(-5px);
            box-shadow: 0 20px 40px rgba(0,0,0,0.15);
        }

        h2, h3 {
            color: #333;
            font-size: 1.5rem;
            font-weight: 600;
            margin-bottom: 1.5rem;
        }

        form {
            margin-bottom: 2rem;
        }

        label {
            display: block;
            margin-bottom: 0.5rem;
            color: #666;
        }

        input[type="text"] {
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

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 1rem;
        }

        th, td {
            padding: 0.8rem;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f4f4f4;
            color: #333;
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

        @media (max-width: 600px) {
            .form-container {
                padding: 1rem;
                width: 100%;
                max-width: 100%;
            }

            h2, h3 {
                font-size: 1.25rem;
            }
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Get Employee Details</h2>
        <form action="GetEmployeeDetailsServlet" method="get">
            <label for="employee_id">Enter Employee ID:</label>
            <input type="text" id="employee_id" name="employee_id" required>
            <button type="submit">Get Details</button>
        </form>

        <h3>Employee Details</h3>
        <table>
            <thead>
                <tr>
                    <th>Employee ID</th>
                    <th>Username</th>
                    <th>Full Name</th>
                    <th>Role</th>
                    <th>Email</th>
                    <th>Phone Number</th>
                    <th>Date of Birth</th>
                    <th>Address</th>
                    <th>Date of Joining</th>
                    <th>Manager Alloted</th>
                </tr>
            </thead>
            <tbody>
                <c:if test="${not empty employee}">
                    <tr>
                        <td>${employee.employeeId}</td>
                        <td>${employee.username}</td>
                        <td>${employee.fullname}</td>
                        <td>${employee.role}</td>
                        <td>${employee.email}</td>
                        <td>${employee.phoneNumber}</td>
                        <td>${employee.dob}</td>
                        <td>${employee.address}</td>
                        <td>${employee.dateOfJoining}</td>
                        <td>${employee.managerAlloted}</td>
                    </tr>
                </c:if>
            </tbody>
        </table>
        <a href="adminHome.jsp" class="back-button">Back</a>
    </div>
</body>
</html>
