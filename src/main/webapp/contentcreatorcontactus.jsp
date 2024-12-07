<%@ page import="com.klef.jfsd.springboot.model.ContentCreator" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
ContentCreator contentcreator = (ContentCreator) session.getAttribute("contentcreator");
if(contentcreator == null){
    response.sendRedirect("contentcreatorsessionexpiry");
    return;
}
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
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
            justify-content: center;
            align-items: center;
            flex-direction: column;
            box-sizing: border-box;
        }

        .form-container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 500px;
            animation: fadeIn 0.8s ease-in-out;
            margin-top: 20px;
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

        h3 {
            text-align: center;
            color: #333;
            font-size: 24px;
            font-weight: 600;
            text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.2);
            margin-bottom: 15px;
        }

        form table {
            width: 100%;
            border-spacing: 0;
        }

        table td {
            padding: 8px;
            vertical-align: middle;
        }

        .icon {
            margin-right: 10px;
            font-size: 22px;
            color: #ff8c00;
        }

        label {
            display: flex;
            align-items: center;
            font-weight: bold;
            color: #555;
        }

        input[type="text"],
        input[type="email"],
        input[type="number"],
        input[type="password"],
        input[type="radio"],
        textarea {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
            resize: vertical; /* For textarea */
        }

        input[type="radio"] {
            width: auto;
            margin-right: 5px;
        }

        textarea {
            height: 100px; /* Set height for textarea */
        }

        .button-container {
            text-align: center;
            margin-top: 15px;
        }

        input[type="submit"],
        input[type="reset"] {
            padding: 8px 16px;
            border: none;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
            background-color: #4070f4;
            color: #fff;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #ff8c00;
        }
    </style>
</head>
<body>
    <%@ include file="contentcreatornavbar.jsp" %>

    <h3><u>Contact Us</u></h3>

    <div class="form-container">
        <form method="post" action="sendemail">
            <table>
                <tr>
                    <td><label for="name"><span class="icon">👤</span>Name</label></td>
                    <td><input type="text" id="name" name="name" required/></td>
                </tr>
                <tr>
                    <td><label for="email"><span class="icon">📧</span>Email ID</label></td>
                    <td><input type="email" id="email" name="email" required/></td>
                </tr>
                <tr>
                    <td><label for="subject"><span class="icon">💬</span>Subject</label></td>
                    <td><input type="text" id="subject" name="subject" required/></td>
                </tr>
                <tr>
                    <td><label for="message"><span class="icon">📝</span>Message</label></td>
                    <td><textarea id="message" name="message" required></textarea></td>
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
</body>
</html>
