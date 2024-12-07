<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - Indian Culture</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500;600&display=swap">
    <link rel="stylesheet" href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css">
    <style>
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
            --icon-color: #f39c12;
            --icon-hover-color: #e74c3c;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Open Sans", sans-serif;
        }

        body {
            background-color: var(--background-light);
            color: var(--text-dark);
            transition: all 0.5s ease;
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
            background-color: var(--sidebar-hover);
        }

        .navbar .menu-icon,
        .navbar #darkLight {
            font-size: 20px;
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
            padding-top: 60px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
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

        .content {
            padding: 20px;
            margin-top: 60px;
        }

        h1 {
            font-size: 28px;
            color: var(--text-dark);
        }

        p {
            font-size: 18px;
            color: var(--text-dark);
        }

        body.dark h1,
        body.dark p {
            color: var(--text-light);
        }
    </style>
</head>
<body>
    <div class="navbar">
        <i class="bx bx-menu menu-icon" id="toggleSidebar"></i>
        <h2 class="logo"><a href="#">Indian Culture</a></h2>
        <div class="nav-buttons">
            <a href="adminhome">Home</a>
            <a href="adminlogout">Logout</a>
        </div>
        <i class="bx bx-moon" id="darkLight"></i>
    </div>

    <div class="sidebar" id="sidebar">
        <a href="viewallusers"><i class="bx bx-user"></i> View All Users</a>
        <a href="viewallcontentcreators"><i class="bx bx-edit"></i> View All Content Creators</a>
        <a href="viewalltourguides"><i class="bx bx-user"></i> View All tour guides</a>
        <a href="deletecontentcreator"><i class="bx bx-trash"></i> Delete Content Creator</a>
        <a href="deleteuser"><i class="bx bx-user-x"></i> Delete User</a>
         <a href="deletetourguide"><i class="bx bx-user-x"></i> Delete Tour Guide</a>
        <a href="updateuserstatus"><i class="bx bx-refresh"></i> Update User Status</a>
        <a href="updatecontentcreatorstatus"><i class="bx bx-refresh"></i> Update Content Creator Status</a>
    </div>

    <div class="content">
        <!-- Main Content -->
    </div>

    <script>
        const sidebar = document.getElementById('sidebar');
        const toggleSidebar = document.getElementById('toggleSidebar');
        toggleSidebar.onclick = () => sidebar.classList.toggle('active');

        const darkLight = document.getElementById('darkLight');
        darkLight.onclick = () => {
            document.body.classList.toggle('dark');
            darkLight.classList.toggle('bx-moon');
            darkLight.classList.toggle('bx-sun');
        };
    </script>
</body>
</html>
