<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="System.model.Employee" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Select Employee</title>
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

        .select-button {
            background-color: #007bff;
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

        .select-button:hover {
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
        <h2>Select an Employee</h2>
        <table>
            <tr>
                <th>Employee ID</th>
                <th>Full Name</th>
                <th>Action</th>
            </tr>
            <%
                Object employeesObj = request.getAttribute("employees");
                if (employeesObj instanceof List<?>) {
                    List<?> employeesList = (List<?>) employeesObj;
                    if (!employeesList.isEmpty() && employeesList.get(0) instanceof Employee) {
                        @SuppressWarnings("unchecked")
                        List<Employee> employees = (List<Employee>) employeesList;
                        for (Employee employee : employees) {
            %>
            <tr>
                <td><%= employee.getEmployeeId() %></td>
                <td><%= employee.getFullname() %></td>
                <td><a href="EmployeeChartsServlet?employeeId=<%= employee.getEmployeeId() %>" class="select-button">Select</a></td>
            </tr>
            <%
                        }
                    } else {
            %>
            <tr>
                <td colspan="3">No employees found under your supervision.</td>
            </tr>
            <%
                    }
                } else {
            %>
            <tr>
                <td colspan="3">No employees found under your supervision.</td>
            </tr>
            <%
                }
            %>
        </table>
        <a href="associateHome.jsp" class="back-button">Back</a>
    </div>
</body>
</html>
