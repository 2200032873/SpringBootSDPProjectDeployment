<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Form</title>
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap");

        body {
            font-family: "Poppins", sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
        }

        .feedback-container {
            max-width: 600px;
            margin: 50px auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: rgba(0, 0, 0, 0.1) 0px 4px 12px;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #9b59b6;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-top: 10px;
            font-weight: bold;
        }

        input, textarea, select {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        textarea {
            resize: vertical;
            min-height: 100px;
        }

        .button {
            background-color: #9b59b6;
            color: #fff;
            border: none;
            padding: 10px 15px;
            margin-top: 20px;
            border-radius: 4px;
            cursor: pointer;
            text-align: center;
            font-size: 16px;
        }

        .button:hover {
            background-color: #8e44ad;
        }
    </style>
</head>

<body>
    <%@ include file="usernavbar.jsp" %>

    <div class="feedback-container">
        <h1>Feedback Form</h1>
        <form action="sendfeedback" method="post">
            <input type="hidden" name="contentId" value="${content.id}" />

            <label for="userName">Your Name:</label>
            <input type="text" id="userName" name="userName" placeholder="Enter your name" required />

            <label for="userEmail">Your Email:</label>
            <input type="email" id="userEmail" name="userEmail" placeholder="Enter your email" required />

            <label for="feedbackText">Your Feedback:</label>
            <textarea id="feedbackText" name="feedbackText" placeholder="Write your feedback here..." required></textarea>

            <label for="rating">Rating:</label>
            <select id="rating" name="rating" required>
                <option value="">--Select Rating--</option>
                <option value="1">1 - Poor</option>
                <option value="2">2 - Fair</option>
                <option value="3">3 - Good</option>
                <option value="4">4 - Very Good</option>
                <option value="5">5 - Excellent</option>
            </select>

            <button type="submit" class="button">Submit Feedback</button>
        </form>
    </div>
</body>

</html>
