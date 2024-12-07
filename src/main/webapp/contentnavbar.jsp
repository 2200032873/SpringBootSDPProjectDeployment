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
            margin-top: 80px; /* To ensure content is below navbar */
            font-size: 16px;
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

        body.dark .nav-buttons a {
            background-color: #2980b9;
        }

        /* Navbar Styling */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: var(--navbar-bg);
            padding: 10px 20px;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            z-index: 1000;
        }

        .navbar a {
            color: var(--text-light);
            text-decoration: none;
            font-size: 16px; 
            margin: 0 10px;
            padding: 8px 12px;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        .navbar a:hover {
            background-color: #265df2;
        }

        .navbar .menu-icon, .navbar #darkLight {
            font-size: 20px;
            cursor: pointer;
            color: var(--text-light);
        }

        /* Sidebar Styling */
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
            font-size: 18px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .sidebar a i {
            margin-right: 10px;
            color: var(--icon-color);
            font-size: 20px;
        }

        .sidebar a:hover {
            background-color: var(--sidebar-hover);
            color: var(--text-light);
        }

        .sidebar a:hover i {
            color: var(--icon-hover-color);
        }

        .sidebar.active {
            left: 0;
        }

        /* Content Section Styling */
        .content {
            margin-top: 80px;
            padding: 20px;
            max-height: calc(100vh - 80px);
            overflow-y: auto;
        }

        .navbar-links {
            display: flex;
            align-items: center;
        }

        .navbar-links a {
            margin-right: 15px;
        }

        .navbar .nav-buttons {
            display: flex;
            align-items: center;
            margin-left: auto;
        }

        .navbar .nav-buttons a {
            margin-left: 20px;
        }

    </style>
</head>
<body>
    <div class="navbar">
        <i class="bx bx-menu menu-icon" id="toggleSidebar"></i> <!-- Menu icon on the left -->
        <div class="nav-buttons">
            <a href="index1">Home</a>
            <a href="contentcreatorhome">Back</a>
        </div>
        <i class="bx bx-moon" id="darkLight"></i> <!-- Dark/Light theme toggle icon -->
    </div>

    <!-- Sidebar (Slide Navigation) -->
    <div class="sidebar" id="sidebar">
        <a href="addcontent">
            <i class="bx bx-plus"></i> Add Content
        </a>
        <a href="viewallcontents">
            <i class="bx bx-edit"></i> View all Contents
        </a>
        <a href="viewcontentbyid">
            <i class="bx bx-search"></i> View Content By ID
        </a>
        <a href="viewcontentsbycategory">
            <i class="bx bx-category"></i> View Content By Category
        </a>
    </div>

    <!-- Content Section -->
    <div class="content">
        <!-- Your content goes here -->
    </div>

    <script>
        // Sidebar toggle
        const sidebar = document.getElementById('sidebar');
        const toggleSidebar = document.getElementById('toggleSidebar');
        toggleSidebar.onclick = () => sidebar.classList.toggle('active');

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