<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>
<%@ page import="java.math.BigDecimal" %>
<%@ page import="com.google.gson.Gson" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Charts</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
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

        .container {
            background: white;
            border-radius: 20px;
            box-shadow: 0 15px 30px rgba(0,0,0,0.1);
            overflow: hidden;
            width: 100%;
            max-width: 1200px;
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
            margin-bottom: 2rem;
        }

        .chart-container {
            width: 100%;
            max-width: 800px;
            margin: 1rem auto;
            background: white;
            padding: 1.5rem;
            border-radius: 20px;
            box-shadow: 0 15px 30px rgba(0,0,0,0.1);
            transition: all 0.3s ease;
        }

        .chart-container:hover {
            transform: translateY(-5px);
            box-shadow: 0 20px 40px rgba(0,0,0,0.15);
        }

        canvas {
            width: 100% !important;
            height: auto;
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
            .container {
                padding: 1rem;
            }

            h2 {
                font-size: 1.25rem;
            }

            .chart-container {
                padding: 1rem;
            }
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
        <h2>Employee Charts</h2>
        <div class="chart-container">
            <h3>Daily Tasks/Hours</h3>
            <canvas id="dailyChart"></canvas>
        </div>
        <div class="chart-container">
            <h3>Weekly Tasks/Hours</h3>
            <canvas id="weeklyChart"></canvas>
        </div>
        <div class="chart-container">
            <h3>Monthly Tasks/Hours</h3>
            <canvas id="monthlyChart"></canvas>
        </div>
        <a href="associateHome.jsp" class="back-button">Back</a>
    </div>

    <script>
        var dailyData = <%= new Gson().toJson(request.getAttribute("dailyData")) %>;
        var weeklyData = <%= new Gson().toJson(request.getAttribute("weeklyData")) %>;
        var monthlyData = <%= new Gson().toJson(request.getAttribute("monthlyData")) %>;

        var dailyCtx = document.getElementById('dailyChart').getContext('2d');
        var weeklyCtx = document.getElementById('weeklyChart').getContext('2d');
        var monthlyCtx = document.getElementById('monthlyChart').getContext('2d');

        new Chart(dailyCtx, {
            type: 'pie',
            data: {
                labels: Object.keys(dailyData),
                datasets: [{
                    data: Object.values(dailyData),
                    backgroundColor: ['#FF6384', '#36A2EB', '#FFCE56', '#4BC0C0', '#9966FF', '#FF9F40']
                }]
            }
        });

        new Chart(weeklyCtx, {
            type: 'bar',
            data: {
                labels: Object.keys(weeklyData),
                datasets: [{
                    label: 'Weekly Tasks/Hours',
                    data: Object.values(weeklyData),
                    backgroundColor: '#36A2EB'
                }]
            }
        });

        new Chart(monthlyCtx, {
            type: 'bar',
            data: {
                labels: Object.keys(monthlyData),
                datasets: [{
                    label: 'Monthly Tasks/Hours',
                    data: Object.values(monthlyData),
                    backgroundColor: '#FFCE56'
                }]
            }
        });
    </script>
</body>
</html>
