<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Tour Guide Registration Success</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
        }
        .success-modal {
            background-color: #fff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 350px;
        }
        .success-modal img {
            width: 50px;
            margin-bottom: 20px;
        }
        .success-modal h2 {
            font-size: 22px;
            margin-bottom: 10px;
            color: #333;
        }
        .success-modal p {
            font-size: 16px;
            color: #555;
            margin-bottom: 20px;
        }
        .success-modal .continue-btn {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            text-decoration: none;
            font-size: 14px;
        }
        .success-modal .continue-btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="success-modal">
        <!-- Using an online image for the tick icon -->
        <img src="https://img.icons8.com/color/96/000000/checkmark.png" alt="Success Icon">
        <h2>Congratulations!</h2>
        <p>Your Tour Guide account has been created successfully.</p>
        <a href="tourguidelogin" class="continue-btn">Login Here</a>
    </div>
</body>
</html>
