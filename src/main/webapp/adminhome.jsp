<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home</title>
    <style>
        /* Root Colors */
        :root {
            --bg-start: #A1BE95;
            --bg-end: #F98866;
            --card-front: #4070f4;
            --card-back: #f4d03f;
            --text-dark: #333;
            --text-light: #fff;
        }

        /* Background Gradient */
        body {
            background: linear-gradient(135deg, var(--bg-start), var(--bg-end));
            font-family: Arial, sans-serif;
            color: var(--text-dark);
            transition: all 0.5s ease;
        }

        /* Welcome Message */
        .welcome-container {
            margin-top: 80px;
            text-align: center;
            font-size: 24px;
            color: var(--text-dark);
            padding: 20px;
        }

        .container {
            padding: 20px;
            text-align: center;
            font-size: 18px;
            color: var(--text-dark);
        }

        h1 {
            font-size: 32px;
            color: #333;
        }

        h2 {
            font-size: 24px;
            color: #555;
        }

        /* Flip Card Container */
        .cards-container {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 40px;
            flex-wrap: wrap;
        }

        /* Flip Card Styling */
        .flip-card {
            background-color: transparent;
            width: 150px;
            height: 150px;
            perspective: 1000px; /* 3D space for the flip effect */
        }

        .flip-card-inner {
            position: relative;
            width: 100%;
            height: 100%;
            text-align: center;
            transition: transform 0.6s;
            transform-style: preserve-3d;
            border-radius: 50%; /* Circle shape */
        }

        .flip-card:hover .flip-card-inner {
            transform: rotateY(180deg); /* Flip effect */
        }

        /* Front and Back Faces of the Flip Card */
        .flip-card-front, .flip-card-back {
            position: absolute;
            width: 100%;
            height: 100%;
            -webkit-backface-visibility: hidden; /* Hide back when facing front */
            backface-visibility: hidden;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            color: var(--text-light);
        }

        .flip-card-front {
            background-color: var(--card-front);
        }

        .flip-card-back {
            background-color: var(--card-back);
            transform: rotateY(180deg);
        }

        /* Additional Card Styling */
        .card-title {
            font-size: 18px;
            font-weight: bold;
            padding: 10px;
        }

        .card-description {
            font-size: 14px;
            padding: 10px;
            text-align: center;
        }
    </style>
</head>
<body>
    <%@include file="adminnavbar.jsp" %>
    
    <div class="welcome-container">
        <h1>Welcome to Admin Dashboard</h1>
        <h2>Access user data, content creator info, and perform content updates.</h2>
    </div>

    <div class="container">
        <h2>Current Statistics:</h2>
        <p>Total Users: <c:out value="${userCount}"></c:out></p>
        <p>Total Content Creators: <c:out value="${contentcreatorCount}"></c:out></p>
    </div>

    <!-- Flip Cards Section -->
    <div class="cards-container">
        <!-- Card 1: Manage Users -->
        <div class="flip-card">
            <div class="flip-card-inner">
                <div class="flip-card-front">
                    <div class="card-title">Manage Users</div>
                </div>
                <div class="flip-card-back">
                    <div class="card-description">View, edit, or delete users</div>
                </div>
            </div>
        </div>

        <!-- Card 2: Manage Content Creators -->
        <div class="flip-card">
            <div class="flip-card-inner">
                <div class="flip-card-front">
                    <div class="card-title">Manage Content Creators</div>
                </div>
                <div class="flip-card-back">
                    <div class="card-description">Manage content creator profiles and contributions</div>
                </div>
            </div>
        </div>

        <!-- Card 3: Manage Tour Guides -->
        <div class="flip-card">
            <div class="flip-card-inner">
                <div class="flip-card-front">
                    <div class="card-title">Manage Tour Guides</div>
                </div>
                <div class="flip-card-back">
                    <div class="card-description">Handle tour guide profiles and assignments</div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
