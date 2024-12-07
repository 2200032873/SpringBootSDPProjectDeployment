<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registration Success</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        .success-modal {
            background-color: #fff;
            padding: 20px 40px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 300px;
        }
        .success-modal img {
            width: 50px;
            margin-bottom: 20px;
        }
        .success-modal h2 {
            font-size: 18px;
            margin-bottom: 10px;
            color: #333;
        }
        .success-modal p {
            font-size: 14px;
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
        <p>Your account has been created.</p>
        <a href="contentcreatorlogin" class="continue-btn">Continue</a>
    </div>
</body>
</html>
