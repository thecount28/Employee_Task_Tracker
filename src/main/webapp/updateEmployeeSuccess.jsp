<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Successful</title>
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
            max-width: 500px;
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

        .success-message {
            color: #28a745; /* Green color for success */
            font-size: 1.2rem;
            margin-bottom: 1.5rem;
        }

        .redirect-link {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
            font-size: 1rem;
            display: inline-block;
            margin-top: 1rem;
            transition: all 0.3s ease;
            border: 2px solid #007bff;
            padding: 10px 20px;
            border-radius: 5px;
        }

        .redirect-link:hover {
            background-color: #007bff;
            color: white;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="success-message">Employee details updated successfully.</h2>
        <a href="adminHome.jsp" class="redirect-link">Go to Home</a>
    </div>
</body>
</html>
