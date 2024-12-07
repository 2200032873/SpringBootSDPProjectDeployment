<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Success</title>
<style>
    body {
        font-family: Arial, sans-serif;
        text-align: center;
        margin: 0;
        padding: 0;
        background-color: #f9f9f9;
        color: #333;
    }

    .success-container {
        margin-top: 100px;
        padding: 20px;
        display: inline-block;
        border: 2px solid #4CAF50;
        border-radius: 10px;
        background-color: #e8f5e9;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .success-container .checkmark {
        font-size: 50px;
        color: #4CAF50;
    }

    .success-message {
        font-size: 18px;
        margin-top: 10px;
        color: #2e7d32;
    }

    a {
        display: inline-block;
        margin-top: 20px;
        padding: 10px 20px;
        font-size: 16px;
        text-decoration: none;
        color: white;
        background-color: #4CAF50;
        border-radius: 5px;
        transition: background-color 0.3s;
    }

    a:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
    <div class="success-container">
        <div class="checkmark">&#10004;</div>
        <div class="success-message">
            <c:out value="${message}" />
        </div>
        <a href="updatecontentcreator">Back</a>
    </div>
</body>
</html>
