<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assign Project</title>
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

        .form-container {
            background: white;
            border-radius: 20px;
            box-shadow: 0 15px 30px rgba(0,0,0,0.1);
            overflow: hidden;
            width: 400px;
            max-width: 100%;
            padding: 2rem;
            transition: all 0.3s ease;
        }

        .form-container:hover {
            transform: translateY(-5px);
            box-shadow: 0 20px 40px rgba(0,0,0,0.15);
        }

        h2 {
            color: #333;
            text-align: center;
            margin-bottom: 2rem;
        }

        .form-group {
            margin-bottom: 1.5rem;
            position: relative;
        }

        .form-group input,
        .form-group textarea {
            width: 100%;
            padding: 0.7rem;
            border: none;
            border-bottom: 2px solid #ddd;
            font-size: 1rem;
            transition: all 0.3s ease;
        }

        .form-group input:focus,
        .form-group textarea:focus {
            border-color: #007bff;
            outline: none;
        }

        .form-group label {
            position: absolute;
            top: 0.7rem;
            left: 0;
            transition: all 0.3s ease;
            pointer-events: none;
            color: #999;
        }

        .form-group input:focus + label,
        .form-group input:not(:placeholder-shown) + label,
        .form-group textarea:focus + label,
        .form-group textarea:not(:placeholder-shown) + label {
            top: -1.2rem;
            font-size: 0.8rem;
            color: #007bff;
        }

        .submit-button {
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

        .submit-button:hover {
            background-color: #0056b3;
            box-shadow: 0 4px 15px rgba(0,123,255,0.3);
        }

        .back-button {
            display: inline-block;
            margin-top: 1rem;
            color: #007bff;
            text-decoration: none;
            font-size: 0.9rem;
            transition: all 0.3s ease;
        }

        .back-button:hover {
            color: #0056b3;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .form-container > * {
            animation: fadeIn 0.5s ease-out forwards;
            opacity: 0;
        }

        .form-container > *:nth-child(1) { animation-delay: 0.1s; }
        .form-container > *:nth-child(2) { animation-delay: 0.2s; }
        .form-container > *:nth-child(3) { animation-delay: 0.3s; }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Assign Project</h2>
        <form action="AssignProjectServlet" method="post">
            <div class="form-group">
                <input type="number" id="projectId" name="projectId" required placeholder=" ">
                <label for="projectId">Project ID</label>
            </div>
            <div class="form-group">
                <input type="text" id="projectName" name="projectName" required placeholder=" ">
                <label for="projectName">Project Name</label>
            </div>
            <div class="form-group">
                <input type="text" id="employeeId" name="employeeId" required placeholder=" ">
                <label for="employeeId">Employee ID</label>
            </div>
            <div class="form-group">
                <textarea id="description" name="description" placeholder=" "></textarea>
                <label for="description">Description</label>
            </div>
            <div class="form-group">
                <input type="date" id="deadline" name="deadline" required placeholder=" ">
                <label for="deadline">Deadline (YYYY-MM-DD)</label>
            </div>
            <button type="submit" class="submit-button">Assign Project</button>
        </form>
        <a href="associateHome.jsp" class="back-button">Back</a>
    </div>
</body>
</html>