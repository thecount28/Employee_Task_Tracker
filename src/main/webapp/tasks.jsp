<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="System.model.Task" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Tasks</title>
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

        .container {
            max-width: 1000px;
            width: 90%;
            background-color: white;
            padding: 2rem;
            border-radius: 20px;
            box-shadow: 0 15px 30px rgba(0,0,0,0.1);
            text-align: center;
            transition: all 0.3s ease;
        }

        .container:hover {
            transform: translateY(-5px);
            box-shadow: 0 20px 40px rgba(0,0,0,0.15);
        }

        h2 {
            color: #333;
            margin-bottom: 1.5rem;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            font-size: 16px;
            text-align: left;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .edit-button {
            background-color: #007bff; /* Blue background */
            color: white;
            border: none;
            padding: 8px 16px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        .edit-button:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }

        .back-button {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            color: white;
            background-color: #f44336; /* Light red color */
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .back-button:hover {
            background-color: #d32f2f; /* Darker red on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Employee Tasks</h2>
        <table>
            <thead>
                <tr>
                    <th>Task ID</th>
                    <th>Project ID</th>
                    <th>Project Name</th>
                    <th>Task Date</th>
                    <th>Start Time</th>
                    <th>End Time</th>
                    <th>Task Category</th>
                    <th>Duration</th>
                    <th>Description</th>
                    <th>Approval Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="task" items="${tasks}">
                    <tr>
                        <td>${task.taskId}</td>
                        <td>${task.projectId}</td>
                        <td>${task.projectName}</td>
                        <td>${task.taskDate}</td>
                        <td>${task.startTime}</td>
                        <td>${task.endTime}</td>
                        <td>${task.taskCategory}</td>
                        <td>${task.duration}</td>
                        <td>${task.description}</td>
                        <td>${task.approvalStatus}</td>
                        <td><button class="edit-button" onclick="location.href='EditTaskServlet?taskId=${task.taskId}'">Edit</button></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href="employeeHome.jsp" class="back-button">Back</a>
    </div>
</body>
</html>
