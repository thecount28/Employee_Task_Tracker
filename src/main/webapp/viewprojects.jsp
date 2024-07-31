<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="System.model.Project" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Projects</title>
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
            max-width: 800px;
            width: 90%;
            background-color: white;
            padding: 2rem;
            border-radius: 20px;
            box-shadow: 0 15px 30px rgba(0,0,0,0.1);
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 15px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
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
    <div class="container">
        <h2>Projects List</h2>
        <table>
            <thead>
                <tr>
                    <th>Project ID</th>
                    <th>Project Name</th>
                    <th>Description</th>
                    <th>Deadline</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    Object obj = request.getAttribute("projects");
                    if (obj instanceof List<?>) {
                        List<?> list = (List<?>) obj;
                        if (!list.isEmpty() && list.get(0) instanceof Project) {
                            @SuppressWarnings("unchecked")
                            List<Project> projects = (List<Project>) list;
                            for (Project project : projects) {
                %>
                    <tr>
                        <td><%= project.getProjectId() %></td>
                        <td><%= project.getProjectName() %></td>
                        <td><%= project.getDescription() %></td>
                        <td><%= project.getDeadline() %></td>
                    </tr>
                <% 
                            }
                        }
                    }
                %>
            </tbody>
        </table>
        <a href="employeeHome.jsp" class="back-button">Back</a>
    </div>
</body>
</html>
