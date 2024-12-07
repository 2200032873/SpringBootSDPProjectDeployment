<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Tour Guide Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        body {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 10px;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
        }
        .form-container {
            background-color: #fff;
            padding: 25px 30px;
            width: 400px;
            border-radius: 6px;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .form-container h2 {
            color: #333;
            margin-bottom: 20px;
        }
        .form-container label {
            font-size: 14px;
            color: #333;
            font-weight: 500;
            display: block;
            margin-top: 10px;
        }
        .form-container input[type="email"],
        .form-container input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-top: 4px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 5px;
            outline: none;
            transition: all 0.3s ease;
        }
        .form-container input[type="submit"],
        .form-container input[type="reset"] {
            width: 48%;
            padding: 10px;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
            border: none;
            color: #fff;
            font-size: 16px;
            font-weight: 500;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin-top: 10px;
        }
        .form-container input[type="submit"]:hover,
        .form-container input[type="reset"]:hover {
            background: linear-gradient(-135deg, #71b7e6, #9b59b6);
        }
        .message {
            color: #d9534f;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    <div class="form-container">
        <h2>Tour Guide Login</h2>
        <form method="post" action="checktourguidelogin">
            <label for="temail">Enter Email ID</label>
            <input type="email" id="temail" name="temail" required/>

            <label for="tpwd">Enter Password</label>
            <input type="password" id="tpwd" name="tpwd" required/>

            <div style="display: flex; justify-content: space-between;">
                <input type="submit" value="Login"/>
                <input type="reset" value="Clear"/>
            </div>
        </form>
    </div>
</body>
</html>
