<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="tourguidenavbar.jsp" %>
<%@ page import="com.klef.jfsd.springboot.model.TourGuide"%>
<%
    TourGuide tourguide = (TourGuide) session.getAttribute("tourguide");
    if(tourguide == null){
        response.sendRedirect("tourguidesessionexpiry");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tour Guide Profile</title>
    <style>
        body {
            font-family: 'Open Sans', sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('images/bg.png');
            background-size: cover;
            background-position: center;
            color: #fff;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            box-sizing: border-box;
        }

        nav {
            background-color: rgba(0, 0, 0, 0.8);
            padding: 15px;
            color: white;
            width: 100%;
            text-align: center;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
        }

        a {
            color: #f0f0f0;
            text-decoration: none;
            margin: 0 15px;
            font-weight: bold;
        }

        a:hover {
            color: #ff8c00;
            text-decoration: underline;
        }

        .profile-container {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
            min-height: 100vh;
            padding: 20px;
        }

        .profile-details {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 15px;
            padding: 30px;
            width: 90%;
            max-width: 600px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease-in-out;
            animation: fadeIn 0.8s ease-in-out;
        }

        @keyframes fadeIn {
            0% {
                opacity: 0;
                transform: translateY(20px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .profile-details:hover {
            transform: translateY(-10px);
        }

        h3 {
            text-align: center;
            color: #333;
            font-size: 28px;
            font-weight: 600;
            text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.2);
            margin-bottom: 20px;
        }

        p {
            font-size: 16px;
            line-height: 1.6;
            color: #555;
            margin: 15px 0;
            display: flex;
            align-items: center;
            transition: all 0.3s ease;
        }

        p:hover {
            color: #ff8c00;
            transform: translateX(5px);
        }

        b {
            color: #000;
            margin-right: 15px;
        }

        .icon {
            margin-right: 15px;
            font-size: 22px;
            color: #ff8c00;
            transition: transform 0.3s ease-in-out;
        }

        .icon:hover {
            transform: scale(1.2);
        }
    </style>
</head>
<body>
    <div class="profile-container">
        <div class="profile-details">
            <h3><u>Your Profile</u></h3>
            <p><span class="icon">🆔</span><b>ID:</b> <%= tourguide.getId() %></p>
            <p><span class="icon">👤</span><b>Name:</b> <%= tourguide.getName() %></p>
            <p><span class="icon">🧑‍💼</span><b>Gender:</b> <%= tourguide.getGender() %></p>
            <p><span class="icon">📧</span><b>Email:</b> <%= tourguide.getEmail() %></p>
            <p><span class="icon">🏠</span><b>Address:</b> <%= tourguide.getAddress() %></p>
            <p><span class="icon">📞</span><b>Contact:</b> <%= tourguide.getContact() %></p>
        </div>
    </div>
</body>
</html>
