<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Message</title>
    <style>
        .navbar {
            background-color: #333;
            border-radius: 15px;
            padding: 10px;
            font-family: Arial, sans-serif;
        }

        .navbar ul {
            list-style-type: none;
            padding: auto;
            margin: auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar li {
            display: inline;
            padding: 10px 20px;
        }

        .navbar a {
            color: #ffffff;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        .navbar a:hover {
            color: #ff5733;
        }
    </style>
</head>
<body>
    <font color="blue">${message}</font><br><br>
    <a href="addcontent">Back</a>
</body>
</html>