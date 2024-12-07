<%@page import="com.klef.jfsd.springboot.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
User user = (User) session.getAttribute("user");
if(user==null){
    response.sendRedirect("usersessionexpiry");
    return ;
}
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Profile</title>
    <style>
        /* Background Styling */
        body {
            background-image: url('images/bg.png'); /* Set the background image */
            background-size: cover; /* Cover the entire viewport */
            background-position: center; /* Center the background image */
            font-family: 'Open Sans', sans-serif; /* Consistent font */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center; /* Center horizontally */
            align-items: center; /* Center vertically */
            height: 100vh; /* Full height for the page */
        }

        /* Profile container styling */
        .profile-container {
            display: flex;
            justify-content: center; /* Center content horizontally */
            align-items: center; /* Center content vertically */
            min-height: 100vh; /* Full height of the viewport */
            padding: 20px;
        }

        /* Profile details container styling */
        .profile-details {
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white background */
            border-radius: 12px; /* Smooth rounded corners */
            padding: 30px; /* Increased padding */
            width: 80%;
            max-width: 800px; /* Increased maximum width */
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3); /* Slightly reduced shadow */
        }

        h3 {
            text-align: center;
            color: #333;
        }

        p {
            font-size: 16px;
            line-height: 1.5;
            color: #555;
        }

        b {
            color: #000;
        }
    </style>
</head>
<body>
<%@include file="usernavbar.jsp" %>

<div class="profile-container">
    <div class="profile-details">
        <h3><u>My Profile</u></h3>
        <p><b>ID:</b> <%=user.getId()%></p>
        <p><b>NAME:</b> <%=user.getName()%></p>
        <p><b>GENDER:</b> <%=user.getGender()%></p>
        <p><b>DATE OF BIRTH:</b> <%=user.getDateOfBirth()%></p>
        <p><b>LOCATION:</b> <%=user.getLocation()%></p>
        <p><b>EMAIL:</b> <%=user.getEmail()%></p>
        <p><b>CONTACT:</b> <%=user.getContact()%></p>
        <p><b>STATUS:</b> <%=user.getStatus()%></p>
    </div>
</div>

</body>
</html>
