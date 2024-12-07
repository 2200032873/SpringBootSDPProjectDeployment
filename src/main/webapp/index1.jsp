<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Message</title>
    <style>
        body {
            background-image: url('images/bg.png'); /* Set the background image */
            background-size: cover; /* Cover the entire body */
            background-position: center; /* Center the image */
            font-family: 'Open Sans', sans-serif; /* Consistent font family */
            color: #333; /* Optional: Set default text color */
            margin: 0;
            padding: 0;
            height: 100vh; /* Full height for the page */
            display: flex; /* Enable Flexbox */
            flex-direction: column; /* Stack elements vertically */
            justify-content: flex-start; /* Vertically center content */
            align-items: center; /* Horizontally center content */
        }

        /* Navbar styling */
        nav {
            background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent background for navbar */
            padding: 10px;
            color: white;
            width: 100%;
            text-align: center;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1000;
        }

        .navbar ul {
            list-style-type: none;
            display: flex;
            justify-content: center;
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
            font-size: 16px;
            margin: 0 10px;
            padding: 8px 12px;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        .navbar a:hover {
            background-color: #265df2;
            color: #fff;
        }

        /* Content container */
        .content-container {
            padding: 40px;
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent background */
            border-radius: 8px; /* Rounded corners */
            max-width: 800px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.5); /* Box shadow for a card-like effect */
            text-align: center;
            color: #fff; /* Light text color for visibility */
            margin-top: 100px; /* Ensure there's space below the navbar */
        }

        /* Main content area */
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

        /* Message display */
        .message-container {
            padding: 20px;
            font-size: 18px;
            color: #fff;
            text-align: center;
        }

        /* Dark Mode */
        body.dark {
            background-color: #2c3e50; /* Dark background */
            color: #fff; /* Light text for dark mode */
        }

        body.dark .navbar {
            background-color: #34495e; /* Darker navbar for dark mode */
        }

        body.dark .navbar a {
            color: #fff; /* Light text in navbar links */
        }

    </style>
</head>

<%@ include file="contentnavbar.jsp" %>

<body>
    <!-- Content creator dashboard -->
    <div class="content-container">
        <p>This is your content  dashboard. Here you can manage your content, update the content, and access other features.</p>
        <p><a href="addcontent">Add New Content</a></p>
    </div>

    <!-- Message Display Section -->
    <div class="message-container">
        <font>${message}</font><br><br>
    </div>

    <script>
        // Dark mode toggle
        const darkLight = document.getElementById('darkLight');
        darkLight.onclick = () => {
            document.body.classList.toggle('dark');
            darkLight.classList.toggle('bx-moon');
            darkLight.classList.toggle('bx-sun');
        };
    </script>
</body>
</html>
