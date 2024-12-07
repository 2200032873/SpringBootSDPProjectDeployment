<%@ page import="com.klef.jfsd.springboot.model.TourGuide" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tour Guide Home - Spring Boot</title>
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

        /* Navbar styling */
        nav {
            background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent background for navbar */
            padding: 10px;
            color: white;
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

        /* Link styling */
        a {
            color: #f0f0f0; /* Light color for links */
            text-decoration: none; /* Remove underline */
        }

        a:hover {
            color: #ff8c00; /* Change link color on hover */
        }

        /* Content container */
        .content-container {
            padding: 40px;
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent background */
            border-radius: 8px; /* Rounded corners */
            max-width: 800px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.5); /* Box shadow for a card-like effect */
            text-align: center;
        }

    </style>
</head>
<body>
<%@ include file="tourguidenavbar.jsp" %>

<!-- Tour guide dashboard -->
<div class="content-container">
    <!-- Welcome message -->
    <div class="welcome-container">
        Welcome, <strong>${tourguide.name}</strong> <!-- Using Spring EL to display tour guide's name -->
    </div>

    <!-- Main content area -->
    <div class="container">
        <p>This is your tour guide dashboard. Here you can manage your tours, update your profile, and connect with tourists.</p>
        <p><a href="addtour">Add New Tour</a></p>
        <p><a href="viewtours">View Your Tours</a></p>
        <p><a href="updateprofile">Update Profile</a></p> <!-- Link to update profile -->
    </div>
</div>

</body>
</html>
