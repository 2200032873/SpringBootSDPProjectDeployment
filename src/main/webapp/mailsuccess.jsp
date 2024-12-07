<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mail Sent Successfully</title>
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
            justify-content: center; /* Vertically center content */
            align-items: center; /* Horizontally center content */
        }

        /* Content container */
        .content-container {
            padding: 40px;
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent background */
            border-radius: 8px; /* Rounded corners */
            max-width: 600px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.5); /* Box shadow for a card-like effect */
            text-align: center;
            color: #fff; /* White text color for visibility on dark background */
        }

        h2 {
            margin-bottom: 20px;
            color: #ff8c00; /* Highlighted text color */
        }

        /* Link styling */
        a {
            color: #f0f0f0; /* Light color for links */
            text-decoration: none; /* Remove underline */
            font-weight: bold;
            padding: 10px 20px;
            background-color: #ff8c00; /* Button-like appearance */
            border-radius: 4px;
        }

        a:hover {
            background-color: #e67e22; /* Slightly darker on hover */
            color: white;
        }

        /* Message styling */
        .message {
            margin: 20px 0;
            font-size: 18px;
        }
    </style>
</head>
<body>
    <div class="content-container">
        <h2>Mail Sent Successfully</h2>
        <div class="message">
            <c:out value="${message}"></c:out>
        </div>
        <a href="usercontactus">Back</a>
    </div>
</body>
</html>
