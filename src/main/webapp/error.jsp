<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error</title>
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
            max-width: 600px;
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

        .error-message {
            color: #f44336;
            font-size: 1.5rem;
            margin-bottom: 1.5rem;
        }

        .details {
            font-size: 1.2rem;
            color: #333;
            margin-bottom: 1.5rem;
        }

        .redirect-link {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
            padding: 0.8rem 1.5rem;
            border: 2px solid #007bff;
            border-radius: 50px;
            transition: all 0.3s ease;
            display: inline-block;
        }

        .redirect-link:hover {
            background-color: #007bff;
            color: white;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="error-message">An error occurred while processing your request.</h2>
        <div class="details">
            <p>Please try again later or contact support.</p>
        </div>
        <a href="login.jsp" class="redirect-link">Go back to Home</a>
    </div>
</body>
</html>
