<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - Indian Culture</title>
    <link rel="stylesheet" href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css">
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500;600&display=swap");

        /* Reset and Base Styles */
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
            --icon-color: #f39c12;
            --icon-hover-color: #e74c3c;
        }

        body {
            background-color: var(--background-light);
            color: var(--text-dark);
            font-size: 16px;
            margin: 0;
            transition: all 0.3s ease;
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

        body.dark .sidebar a:hover {
            background-color: var(--sidebar-hover);
        }

        /* Navbar */
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

        .navbar .logo a {
            text-decoration: none;
            font-size: 24px;
            color: var(--text-light);
            font-weight: bold;
        }

        .navbar .navbar-links {
            display: flex;
            align-items: center;
        }

        .navbar .navbar-links a {
            margin: 0 10px;
            color: var(--text-light);
            text-decoration: none;
            font-size: 16px;
            padding: 8px 12px;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        .navbar .navbar-links a:hover {
            background-color: var(--sidebar-hover);
        }

        .navbar .nav-buttons a {
            margin-left: 15px;
            color: var(--text-light);
            text-decoration: none;
            padding: 8px 12px;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        .navbar .nav-buttons a:hover {
            background-color: var(--sidebar-hover);
        }

        .navbar i {
            font-size: 20px;
            color: var(--text-light);
            cursor: pointer;
        }

        /* Sidebar */
        .sidebar {
            position: fixed;
            top: 0;
            left: -250px;
            width: 250px;
            height: 100%;
            background-color: var(--sidebar-bg);
            padding-top: 60px;
            transition: left 0.3s ease;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
            overflow-y: auto;
            z-index: 999;
        }

        .sidebar.active {
            left: 0;
        }

        .sidebar a {
            display: flex;
            align-items: center;
            padding: 15px;
            text-decoration: none;
            color: var(--text-dark);
            font-size: 18px;
            border-radius: 4px;
            margin: 5px 10px;
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

        /* Content */
        .content {
            margin-top: 80px;
            padding: 20px;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <i class="bx bx-menu" id="toggleSidebar"></i>
        <h2 class="logo"><a href="#">Indian Culture</a></h2>
        <div class="navbar-links">
            <a href="/">Home</a>
            <a href="#about">About Us</a>
            <a href="#monuments">Monuments</a>
            <a href="#cuisines">Cuisines</a>
        </div>
        <div class="nav-buttons">
            <a href="userlogin">Login</a>
            <a href="userreg">Sign Up</a>
        </div>
        <i class="bx bx-moon" id="darkLight"></i>
    </div>

    <!-- Sidebar -->
    <div class="sidebar" id="sidebar">
        <a href="adminlogin"><i class="bx bx-user-circle"></i> Admin Login</a>
        <a href="contentcreatorreg"><i class="bx bx-user-plus"></i> Content Creator Registration</a>
        <a href="contentcreatorlogin"><i class="bx bx-briefcase"></i> Content Creator Login</a>
        <a href="tourguidereg"><i class="bx bx-user-plus"></i> Tour Guide Registration</a>
        <a href="tourguidelogin"><i class="bx bx-briefcase"></i> Tour Guide Login</a>
    </div>

  

    <!-- JavaScript -->
    <script>
        const sidebar = document.getElementById('sidebar');
        const toggleSidebar = document.getElementById('toggleSidebar');
        const darkLight = document.getElementById('darkLight');

        // Toggle Sidebar
        toggleSidebar.addEventListener('click', () => {
            sidebar.classList.toggle('active');
        });

        // Toggle Dark Mode
        darkLight.addEventListener('click', () => {
            document.body.classList.toggle('dark');
            darkLight.classList.toggle('bx-moon');
            darkLight.classList.toggle('bx-sun');
        });
    </script>
</body>
</html>
