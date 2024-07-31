<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Profile</title>
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

        .details-container {
            max-width: 500px;
            width: 90%;
            background-color: white;
            padding: 2rem;
            border-radius: 20px;
            box-shadow: 0 15px 30px rgba(0,0,0,0.1);
            text-align: center;
            transition: all 0.3s ease;
        }

        .details-container:hover {
            transform: translateY(-5px);
            box-shadow: 0 20px 40px rgba(0,0,0,0.15);
        }

        .detail-item {
            margin: 10px 0;
            font-size: 1rem;
        }

        .detail-item span {
            font-weight: bold;
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
    <div class="details-container">
        <h2>Employee Details</h2>
        <div class="detail-item">
            <span>Employee ID:</span> ${employeeDetails.employeeId}
        </div>
        <div class="detail-item">
            <span>Username:</span> ${employeeDetails.username}
        </div>
        <div class="detail-item">
            <span>Password:</span> ${employeeDetails.password}
        </div>
        <div class="detail-item">
            <span>Full Name:</span> ${employeeDetails.fullname}
        </div>
        <div class="detail-item">
            <span>Role:</span> ${employeeDetails.role}
        </div>
        <div class="detail-item">
            <span>Email:</span> ${employeeDetails.email}
        </div>
        <div class="detail-item">
            <span>Phone Number:</span> ${employeeDetails.phoneNumber}
        </div>
        <div class="detail-item">
            <span>Date of Birth:</span> ${employeeDetails.dob}
        </div>
        <div class="detail-item">
            <span>Address:</span> ${employeeDetails.address}
        </div>
        <div class="detail-item">
            <span>Date of Joining:</span> ${employeeDetails.dateOfJoining}
        </div>
        <a href="associateHome.jsp" class="back-button">Back</a>
    </div>
</body>
</html>
