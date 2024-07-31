<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employees Under You</title>
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
            padding: 0;
        }

        .employee-container {
            max-width: 500px;
            width: 90%;
            background-color: white;
            padding: 2rem;
            border-radius: 20px;
            box-shadow: 0 15px 30px rgba(0,0,0,0.1);
            text-align: center;
            transition: all 0.3s ease;
        }

        .employee-container:hover {
            transform: translateY(-5px);
            box-shadow: 0 20px 40px rgba(0,0,0,0.15);
        }

        .employee-item {
            margin: 10px 0;
            font-size: 1rem;
        }

        .employee-item a {
            text-decoration: none;
            color: #007bff;
            transition: color 0.3s ease;
        }

        .employee-item a:hover {
            text-decoration: underline;
            color: #0056b3;
        }

        .back-button {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            color: white;
            background-color: #007bff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .back-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="employee-container">
        <h2>Employees Under You</h2>
        <c:forEach var="employee" items="${employees}">
            <div class="employee-item">
                <a href="ViewEmployeeDetailServlet1?employeeId=${employee.employeeId}">
                    ${employee.employeeId} - ${employee.fullname}
                </a>
            </div>
        </c:forEach>
        <a href="associateHome.jsp" class="back-button">Back</a>
    </div>
</body>
</html>
