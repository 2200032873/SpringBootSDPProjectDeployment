<%@page import="com.klef.jfsd.springboot.model.ContentCreator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
ContentCreator contentcreator = (ContentCreator) session.getAttribute("contentcreator");
if(contentcreator == null) {
    response.sendRedirect("contentcreatorsessionexpiry");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Content Creator Home - Spring Boot</title>
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

        /* Navbar styling (if needed) */
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
<%@include file="contentcreatornavbar.jsp" %>

<!-- Content creator dashboard -->
<div class="content-container">
    <!-- Welcome message -->
    <div class="welcome-container">
        Welcome, <strong><%= contentcreator.getName() %></strong>
    </div>

    <!-- Main content area -->
    <div class="container">
        <p>This is your content creator dashboard. Here you can manage your content, update your profile, and access other features.</p>
        <p><a href="addcontent">Add New Content</a></p>
    </div>
</div>

</body>
</html>
