<%@page import="com.klef.jfsd.springboot.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%  
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("usersessionexpiry");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Home - Spring Boot</title>
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
            justify-content: flex-start; /* Align content from the top */
            align-items: center; /* Horizontally center content */
            flex-direction: column; /* Stack elements vertically */
        }

        /* Navbar styling (if needed) */
        nav {
            background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent background for navbar */
            padding: 10px;
            color: white;
            width: 100%; /* Full width for navbar */
        }

        /* Welcome message styling */
        .welcome-container {
            text-align: center;
            font-size: 24px;
            color: #fff; /* Light text color for visibility on dark background */
            padding: 20px;
            transition: color 0.5s ease;
        }

        /* Main content styling */
        .container {
            padding: 20px;
            text-align: center;
            font-size: 18px;
            color: #fff; /* White text color */
            margin-top: 30px;
        }

        /* Content container */
        .content-container {
            padding: 40px;
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent background */
            border-radius: 8px; /* Rounded corners */
            max-width: 800px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.5); /* Box shadow for a card-like effect */
            text-align: center;
            margin-top: 150px; /* Move the container further down */
        }

        /* Link styling */
        a {
            color: #f0f0f0; /* Light color for links */
            text-decoration: none; /* Remove underline */
        }

        a:hover {
            color: #ff8c00; /* Change link color on hover */
        }
    </style>
    <script>
        // Set timeout duration (5 seconds)
        const timeoutDuration = 5000;

        // Redirect to the session expiry page after 5 seconds of inactivity
        let timeout = setTimeout(() => {
            window.location.href = 'usersessionexpiry';
        }, timeoutDuration);

        // Reset the timeout on user activity (mouse or keyboard actions)
        const resetTimeout = () => {
            clearTimeout(timeout);
            timeout = setTimeout(() => {
                window.location.href = 'usersessionexpiry';
            }, timeoutDuration);
        };

        // Add event listeners to reset the timeout on activity
        document.addEventListener('mousemove', resetTimeout);
        document.addEventListener('keydown', resetTimeout);
    </script>
</head>
<body>
    <%@include file="usernavbar.jsp" %>

    <!-- Content container -->
    <div class="content-container">
        <!-- Welcome message -->
        <div class="welcome-container">
            Welcome, <strong><%= user.getName() %></strong>
        </div>

        <!-- Main content area -->
        <div class="container">
            <p>This is your user dashboard. Here you can manage your profile, update information, and more.</p>
        </div>
    </div>
</body>
</html>
