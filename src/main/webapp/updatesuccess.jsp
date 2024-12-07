<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Success</title>
    <style>
        /* Background styling */
        body {
            font-family: 'Open Sans', sans-serif;
            background-color: #f3f4f6; /* Light background color */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full viewport height */
        }

        /* Success container */
        .success-container {
            text-align: center;
            background-color: #ffffff; /* White background */
            border: 2px solid #28a745; /* Green border */
            border-radius: 12px; /* Smooth corners */
            padding: 20px 30px; /* Padding inside the container */
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            max-width: 400px; /* Limit width */
            width: 100%; /* Responsive width */
        }

        /* Green tick symbol */
        .success-icon {
            font-size: 60px; /* Large tick */
            color: #28a745; /* Green color */
        }

        /* Success message styling */
        .success-message {
            color: #333; /* Dark text */
            font-size: 18px; /* Standard font size */
            margin: 15px 0; /* Spacing around the message */
        }

        /* Back link button */
        .back-link {
            display: inline-block;
            background-color: #007BFF; /* Blue background for button */
            color: white; /* White text */
            text-decoration: none; /* Remove underline */
            padding: 10px 20px; /* Padding for button */
            border-radius: 6px; /* Rounded corners */
            font-size: 14px; /* Adjust font size */
            transition: background-color 0.3s ease; /* Smooth hover effect */
        }

        .back-link:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
    </style>
</head>
<body>
    <div class="success-container">
        <!-- Green tick symbol -->
        <div class="success-icon">&#10004;</div>
        <!-- Success message -->
        <div class="success-message">
            <c:out value="${message}" />
        </div>
        <!-- Back link button -->
        <a href="updateuser" class="back-link">Back</a>
    </div>
</body>
</html>
