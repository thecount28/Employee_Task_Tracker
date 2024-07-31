<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="System.model.Task" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Work Update</title>
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
            max-width: 900px;
            width: 90%;
            background-color: white;
            padding: 2rem;
            border-radius: 20px;
            box-shadow: 0 15px 30px rgba(0,0,0,0.1);
            text-align: center;
        }

        h2 {
            margin-bottom: 1.5rem;
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            font-size: 16px;
            text-align: left;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
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

        select {
            padding: 5px;
            border-radius: 4px;
            border: 1px solid #ddd;
        }

        button {
            padding: 5px 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        .back-button {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            color: white;
            background-color: #f44336;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .back-button:hover {
            background-color: #d32f2f;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Update Task Approval Status</h2>
        <form action="WorkUpdateServlet" method="post">
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
                        <th>Update</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        Object tasksObj = request.getAttribute("tasks");
                        if (tasksObj instanceof List<?>) {
                            List<?> tasksList = (List<?>) tasksObj;
                            boolean hasTasks = false;
                            
                            for (Object obj : tasksList) {
                                if (obj instanceof Task) {
                                    hasTasks = true;
                                    Task task = (Task) obj;
                    %>
                    <tr>
                        <td><%= task.getTaskId() %></td>
                        <td><%= task.getProjectId() %></td>
                        <td><%= task.getProjectName() %></td>
                        <td><%= task.getTaskDate() %></td>
                        <td><%= task.getStartTime() %></td>
                        <td><%= task.getEndTime() %></td>
                        <td><%= task.getTaskCategory() %></td>
                        <td><%= task.getDuration() %></td>
                        <td><%= task.getDescription() %></td>
                        <td>
                            <select name="approvalStatus">
                                <option value="Pending" <%= task.getApprovalStatus().equals("Pending") ? "selected" : "" %>>Pending</option>
                                <option value="Approved" <%= task.getApprovalStatus().equals("Approved") ? "selected" : "" %>>Approved</option>
                                <option value="Rejected" <%= task.getApprovalStatus().equals("Rejected") ? "selected" : "" %>>Rejected</option>
                            </select>
                        </td>
                        <td>
                            <input type="hidden" name="taskId" value="<%= task.getTaskId() %>">
                            <button type="submit">Update Status</button>
                        </td>
                    </tr>
                    <% 
                                }
                            }
                            if (!hasTasks) {
                    %>
                    <tr>
                        <td colspan="11">No tasks available</td>
                    </tr>
                    <% 
                            }
                        } else {
                    %>
                    <tr>
                        <td colspan="11">No tasks available</td>
                    </tr>
                    <% 
                        }
                    %>
                </tbody>
            </table>
        </form>
        <a href="associateHome.jsp" class="back-button">Back</a>
    </div>
</body>
</html>
