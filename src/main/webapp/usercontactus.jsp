<%@page import="com.klef.jfsd.springboot.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
User user = (User) session.getAttribute("user");
if(user==null){
    response.sendRedirect("usersessionexpiry");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <title>Contact Us</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }
        .form-content {
            background-color: #fff;
            border-radius: 8px;
            padding: 20px;
            width: 80%;
            max-width: 600px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        h3 {
            text-align: center;
            color: #333;
        }
        table {
            width: 100%;
            margin-top: 20px;
        }
        td {
            padding: 10px;
        }
        label {
            font-weight: bold;
        }
        input[type="text"],
        input[type="email"],
        input[type="text"],
        textarea {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        textarea {
            resize: vertical;
            height: 100px;
        }
        .button-container {
            text-align: center;
            margin-top: 20px;
        }
        input[type="submit"],
        input[type="reset"] {
            padding: 10px 15px;
            margin: 5px;
            border: none;
            border-radius: 4px;
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
    <h3 style="text-align: center;"><u>Contact Us</u></h3>
    <div class="form-container">
        <div class="form-content">
            <form method="post" action="sendemail">
                <table>
                    <tr>
                        <td><label for="name">Name</label></td>
                        <td><input type="text" id="name" name="name" required/></td>
                    </tr>
                    <tr>
                        <td><label for="email">Email ID</label></td>
                        <td><input type="email" id="email" name="email" required/></td>
                    </tr>
                    <tr>
                        <td><label for="subject">Subject</label></td>
                        <td><input type="text" id="subject" name="subject" required/></td>
                    </tr>
                    <tr>
                        <td><label for="message">Message</label></td>
                        <td><textarea id="message" name="message"></textarea></td>
                    </tr>
                    <tr>
                        <td colspan="2" class="button-container">
                            <input type="submit" value="Send"/>
                            <input type="reset" value="Clear"/>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</body>
</html>
