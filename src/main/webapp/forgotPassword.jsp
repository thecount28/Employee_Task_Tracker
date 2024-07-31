<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password</title>
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

        .form-container {
            max-width: 500px;
            width: 90%;
            background-color: white;
            padding: 2rem;
            border-radius: 20px;
            box-shadow: 0 15px 30px rgba(0,0,0,0.1);
            text-align: center;
            transition: all 0.3s ease;
        }

        .form-container:hover {
            transform: translateY(-5px);
            box-shadow: 0 20px 40px rgba(0,0,0,0.15);
        }

        h2 {
            color: #333;
            margin-bottom: 1.5rem;
        }

        label {
            display: block;
            text-align: left;
            margin-bottom: 1rem;
            color: #555;
            font-size: 1rem;
        }

        input[type="email"] {
            width: calc(100% - 20px);
            padding: 0.8rem;
            margin-bottom: 1.5rem;
            border: 1px solid #ccc;
            border-radius: 10px;
            font-size: 1rem;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 0.8rem 1.5rem;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            font-size: 1rem;
            transition: all 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
            transform: translateY(-2px);
            box-shadow: 0 4px 15px rgba(0,123,255,0.3);
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Forgot Password</h2>
        <form action="resetPassword.jsp" method="post">
            <label for="email">Enter your email:</label>
            <input type="email" id="email" name="email" required>
            <input type="submit" value="Reset Password">
        </form>
    </div>
</body>
</html>
