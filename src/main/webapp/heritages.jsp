<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Heritage Sites Map</title>
    <style>
        /* General body styling */
        body {
            background-image: url('images/bg.png'); /* Set the background image */
            background-size: cover; /* Make the background cover the entire body */
            background-position: center; /* Center the background image */
            font-family: 'Open Sans', sans-serif; /* Consistent font family */
            color: #333; /* Default text color */
            margin: 0;
            padding: 0;
            height: 100vh; /* Full height for the page */
            display: flex; /* Enable Flexbox */
            flex-direction: column; /* Stack elements vertically */
            justify-content: flex-start; /* Start content from the top */
            align-items: center; /* Horizontally center content */
        }

        /* Navbar styling (if needed) */
        nav {
            background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent background for navbar */
            padding: 10px;
            color: white;
            width: 100%;
            text-align: center;
        }

        /* Content container */
        .content-container {
            padding: 20px; /* Padding around the content */
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent background */
            border-radius: 8px; /* Rounded corners */
            max-width: 1000px; /* Further increased max-width */
            width: 95%; /* Adjusted width for responsiveness */
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.5); /* Box shadow for a card-like effect */
            text-align: center;
            margin-top: 150px; /* Increased margin to push the container further down */
        }

        /* Iframe styling */
        iframe {
            width: 100%; /* Full width */
            height: 500px; /* Further increased height */
            border: none; /* Remove border */
            border-radius: 8px; /* Rounded corners for iframe */
        }
    </style>
</head>
<body>
<%@include file="usernavbar.jsp" %>
    <div class="content-container">
        <iframe src="https://www.google.com/maps/d/u/0/embed?mid=1rWVL7-ObutJZd9PlLtzqS4kounhEzHg&ehbc=2E312F"></iframe>
    </div>
</body>
</html>
