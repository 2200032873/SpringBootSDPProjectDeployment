<%@page import="com.klef.jfsd.springboot.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
User user = (User) session.getAttribute("user");
if(user == null) {
    response.sendRedirect("usersessionexpiry");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <title>Update User</title>
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

        /* Form container styling */
.form-container {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 35%; /* Further reduced width */
    max-width: 500px; /* Smaller maximum width */
    min-height: 350px; /* Further reduced height */
    background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white background */
    border-radius: 12px; /* Smooth rounded corners */
    padding: 15px; /* Reduced padding */
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3); /* Slightly reduced shadow */
    margin-top: 60px; /* Add top margin to push down the form */
}
        

        /* Form content styling */
        .form-content {
            width: 100%;
        }

        h3 {
            text-align: center;
            color: #333;
            margin-bottom: 15px;
        }

        h4 {
            text-align: center;
            color: #007BFF;
        }

        table {
            width: 100%; /* Full width */
            margin-top: 10px;
        }

        td {
            padding: 6px; /* Reduced padding */
        }

        label {
            font-weight: bold;
            display: block;
        }

        input[type="text"],
        input[type="number"],
        input[type="date"],
        input[type="email"],
        input[type="password"],
        select {
            width: 100%;
            padding: 6px; /* Smaller padding */
            margin-top: 6px; /* Reduced margin */
            border: 1px solid #ccc;
            border-radius: 5px; /* Slightly smaller border radius */
            font-size: 13px; /* Smaller font size */
        }

        /* Buttons */
        .button-container {
            text-align: center;
            margin-top: 15px; /* Reduced space between form and buttons */
        }

        input[type="submit"],
        input[type="reset"] {
            padding: 8px 14px; /* Smaller button size */
            margin: 8px; /* Reduced space between buttons */
            border: none;
            border-radius: 5px;
            font-size: 13px;
            cursor: pointer;
        }

        input[type="submit"] {
            background-color: #28a745;
            color: white;
        }

        input[type="reset"] {
            background-color: #dc3545;
            color: white;
        }
    </style>
</head>
<body>
<%@include file="usernavbar.jsp" %>

<h4><c:out value="${message}"></c:out></h4>

<div class="form-container">
    <div class="form-content">
        <h3><u>Update User Profile</u></h3>
        <form method="post" action="updateuserprofile">
            <table>
                <tr>
                    <td><label for="uid">User ID</label></td>
                    <td><input type="number" id="uid" name="uid" readonly value="<%= user.getId() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="uname">Enter Name</label></td>
                    <td><input type="text" id="uname" name="uname" value="<%= user.getName() %>" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="ugender" value="MALE" <%= user.getGender().equals("MALE") ? "checked" : "" %> required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="ugender" value="FEMALE" <%= user.getGender().equals("FEMALE") ? "checked" : "" %> required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="ugender" value="OTHERS" <%= user.getGender().equals("OTHERS") ? "checked" : "" %> required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="udob">Enter Date of Birth</label></td>
                    <td><input type="date" id="udob" name="udob" value="<%= user.getDateOfBirth() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="ulocation">Enter Location</label></td>
                    <td><input type="text" id="ulocation" name="ulocation" value="<%= user.getLocation() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="uemail">Enter Email ID</label></td>
                    <td><input type="email" id="uemail" name="uemail" readonly value="<%= user.getEmail() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="upwd">Enter Password</label></td>
                    <td><input type="password" id="upwd" name="upwd" value="<%= user.getPassword() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="ucontact">Enter Contact</label></td>
                    <td><input type="number" id="ucontact" name="ucontact" value="<%= user.getContact() %>" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Update"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>
</body>
</html>
