<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring Boot - Indian Culture Platform</title>
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500;600&display=swap");
        @import url("https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css");

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Open Sans", sans-serif;
        }

        :root {
            --background-light: #f4f4f4;
            --background-dark: #2c3e50;
            --text-light: #fff;
            --text-dark: #333;
            --navbar-bg: #4070f4;
            --sidebar-bg: #ffffff;
            --sidebar-hover: #265df2;
            --button-bg: #4CAF50;
            --button-hover-bg: #5cb85c;
            --icon-color: #f39c12; /* Gold color for icons */
            --icon-hover-color: #e74c3c; /* Red color on hover */
        }

        body {
            background-color: var(--background-light);
            color: var(--text-dark);
            transition: all 0.5s ease;
            font-size: 16px; /* Increased font size */
            height: 100%; /* Ensure the height of body is 100% */
            overflow-y: auto; /* Allow vertical scrolling */
        }

        body.dark {
            background-color: var(--background-dark);
            color: var(--text-light);
        }

        body.dark .navbar, 
        body.dark .sidebar {
            background-color: #34495e;
        }

        body.dark .navbar a, 
        body.dark .sidebar a {
            color: var(--text-light);
        }

        /* Navbar Styling */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: var(--navbar-bg);
            padding: 10px 15px;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            z-index: 1000;
        }

        .navbar a {
            color: var(--text-light);
            text-decoration: none;
            font-size: 16px; /* Increased font size */
            margin: 0 8px;
            padding: 8px 12px;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        .navbar a:hover {
            background-color: #265df2;
        }

        .navbar .menu-icon, .navbar #darkLight {
            font-size: 24px; /* Increased icon size */
            cursor: pointer;
            color: var(--text-light);
        }

        .sidebar {
            position: fixed;
            top: 0;
            left: -250px;
            width: 250px;
            height: 100%;
            background-color: var(--sidebar-bg);
            transition: left 0.3s ease;
            z-index: 999;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
            padding-top: 60px;
            overflow-y: auto;
        }

        .sidebar a {
            display: flex;
            align-items: center;
            color: var(--text-dark);
            padding: 15px;
            text-decoration: none;
            font-size: 18px; /* Increased font size */
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .sidebar a i {
            margin-right: 10px; /* Space between icon and text */
            color: var(--icon-color); /* Icon color */
            font-size: 20px; /* Icon size */
        }

        .sidebar a:hover {
            background-color: var(--sidebar-hover);
            color: var(--text-light); /* Change text color to white on hover */
        }

        .sidebar a:hover i {
            color: var(--icon-hover-color); /* Change icon color on hover */
        }

        .sidebar.active {
            left: 0;
        }

        .content {
            margin-top: 80px;
            padding: 10px 20px;
            max-height: calc(100vh - 80px);
            overflow-y: auto;
        }

        #popup {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background: var(--sidebar-bg);
            padding: 20px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.2);
            z-index: 1001;
            border-radius: 8px;
        }

        #overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            z-index: 1000;
        }

        #popup button {
            margin: 5px;
            padding: 10px 15px;
            border: none;
            background: var(--button-bg);
            color: var(--text-light);
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        #popup button:hover {
            background: var(--button-hover-bg);
        }
    </style>
</head>
<body>
    <div class="navbar">
        <i class="bx bx-menu menu-icon" id="toggleSidebar"></i>
        <div class="nav-buttons">
            <a href="userhome">Home</a>
            <a href="userlogout">Logout</a>
        </div>
        <i class="bx bx-moon" id="darkLight"></i>
    </div>

    <div class="sidebar" id="sidebar">
        <a href="userprofile"><i class="bx bx-user"></i> Profile</a>
        <a href="#" id="exploreButton"><i class="bx bx-search"></i> Explore</a>
        <a href="updateuser"><i class="bx bx-edit"></i> Update Profile</a>
                <a href="heritages"><i class="bx bx-edit"></i>Top Heritages</a>
        <a href="usercontactus"><i class="bx bx-envelope"></i> Contact Us</a>
    </div>

    <div id="overlay"></div>
    <div id="popup">
        <table>
            <tr><td>Your profile status is currently <strong>Not Accepted</strong>.</td></tr>
            <tr><td>Contact us for more information or try again later.</td></tr>
        </table>
        <button onclick="closePopup()">Close</button>
        <button onclick="navigateToContact()">Contact Us</button>
    </div>

    <script>
        const darkLight = document.getElementById('darkLight');
        const toggleSidebar = document.getElementById('toggleSidebar');
        const sidebar = document.getElementById('sidebar');

        darkLight.onclick = () => {
            document.body.classList.toggle('dark');
            darkLight.classList.toggle('bx-moon');
            darkLight.classList.toggle('bx-sun');
        };

        toggleSidebar.onclick = () => {
            sidebar.classList.toggle('active');
        };

        const userStatus = "${user.status}".trim() || "";
        const exploreButton = document.getElementById('exploreButton');
        const popup = document.getElementById('popup');
        const overlay = document.getElementById('overlay');

        exploreButton.addEventListener('click', (event) => {
            event.preventDefault();
            if (userStatus === "Rejected" || userStatus === "Registered") {
                overlay.style.display = "block";
                popup.style.display = "block";
            } else if (userStatus === "Accepted") {
                window.location.href = "viewasuser";
            }
        });

        function closePopup() {
            overlay.style.display = "none";
            popup.style.display = "none";
        }

        function navigateToContact() {
            window.location.href = "usercontactus";
        }
    </script>
</body>
</html>
