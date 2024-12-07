<%@ page import="com.klef.jfsd.springboot.model.ContentCreator" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
ContentCreator contentcreator = (ContentCreator) session.getAttribute("contentcreator");
if (contentcreator == null) {
    response.sendRedirect("contentcreatorsessionexpiry");
    return;
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Content Creator</title>
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
    align-items: center; /* Centers the form vertically */
    flex-direction: column; /* Ensures elements are stacked vertically */
    box-sizing: border-box;
}

.form-container {
    background-color: rgba(255, 255, 255, 0.9);
    padding: 10px; /* Adjusted padding */
    border-radius: 8px;
    box-shadow: 0 6px 20px rgba(0, 0, 0, 0.2);
    width: 100%;
    max-width: 500px; /* Keep the width as is */
    animation: fadeIn 0.8s ease-in-out;
    margin-top: 20px; /* Add some margin to separate from navbar */
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
            font-size: 24px; /* Reduced font size */
            font-weight: 600;
            text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.2);
            margin-bottom: 15px; /* Reduced margin */
        }

        form table {
            width: 100%;
            border-spacing: 0;
        }

        table td {
            padding: 8px; /* Reduced padding */
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
        input[type="radio"] {
            width: 100%;
            padding: 8px; /* Reduced padding */
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px; /* Reduced font size */
        }

        input[type="radio"] {
            width: auto;
            margin-right: 5px;
        }

        .button-container {
            text-align: center;
            margin-top: 15px;
        }

        input[type="submit"],
        input[type="reset"] {
            padding: 8px 16px; /* Adjusted padding */
            border: none;
            border-radius: 5px;
            font-size: 12px; /* Reduced font size */
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

    <div class="form-container">
        <h3>Update Content Creator</h3>
        <form method="post" action="updatecontentcreatorprofile">
            <table>
                <tr>
                    <td><label for="cid"><span class="icon">🆔</span>ID</label></td>
                    <td><input type="number" id="cid" name="cid" readonly value="<%= contentcreator.getId() %>" required /></td>
                </tr>
                <tr>
                    <td><label for ="cname"><span class="icon">👤</span>Enter Name</label></td>
                    <td><input type="text" id="cname" name="cname" value="<%= contentcreator.getName() %>" required /></td>
                </tr>
                <tr>
                    <td><label><span class="icon">🧑‍💼</span>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="cgender" value="MALE" <%= contentcreator.getGender().equals("MALE") ? "checked" : "" %> required />
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="cgender" value="FEMALE" <%= contentcreator.getGender().equals("FEMALE") ? "checked" : "" %> required />
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="cgender" value="OTHERS" <%= contentcreator.getGender().equals("OTHERS") ? "checked" : "" %> required />
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="caddress"><span class="icon">🏠</span>Enter Address</label></td>
                    <td><input type="text" id="caddress" name="caddress" value="<%= contentcreator.getAddress() %>" required /></td>
                </tr>
                <tr>
                    <td><label for="cemail"><span class="icon">📧</span>Enter Email ID</label></td>
                    <td><input type="email" id="cemail" name="cemail" readonly value="<%= contentcreator.getEmail() %>" required /></td>
                </tr>
                <tr>
                    <td><label for="cpwd"><span class="icon">🔑</span>Enter Password</label></td>
                    <td><input type="password" id="cpwd" name="cpwd" value="<%= contentcreator.getPassword() %>" required /></td>
                </tr>
                <tr>
                    <td><label for="ccontact"><span class="icon">📞</span>Enter Contact</label></td>
                    <td><input type="number" id="ccontact" name="ccontact" value="<%= contentcreator.getContact() %>" required /></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Update" />
                        <input type="reset" value="Clear" />
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>