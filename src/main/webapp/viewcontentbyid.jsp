<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Spring Boot Project</title>
    
    <style>
        body {
            background-image: url('images/bg.png'); /* Set the background image */
            background-size: cover; /* Cover the entire body */
            background-position: center; /* Center the image */
            font-family: 'Open Sans', sans-serif; /* Consistent font family */
            margin: 0;
            padding: 0;
        }

        .button {
            background-color: #4CAF50;
            color: white;
            padding: 12px 24px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        .button:hover {
            background-color: #45a049;
        }

        .form-container {
            max-width: 500px;
            margin: 150px auto; /* Increased top margin to push the form further down */
            padding: 25px 30px;
            background-color: #fff; /* Updated to a white background */
            border-radius: 10px;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
            background: linear-gradient(135deg, #71b7e6, #9b59b6); /* Added gradient */
            color: #fff; /* Set text color to white for contrast */
            transition: box-shadow 0.3s ease; /* Added smooth transition effect */
        }

        .form-container:hover {
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2); /* Shadow effect on hover */
        }

        .form-container label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
            color: #fff; /* Set label text color to white */
        }

        .form-container input[type="text"],
        .form-container input[type="number"],
        .form-container select,
        .form-container textarea {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;
            font-size: 16px;
            background-color: #f2f2f2; /* Light background for input fields */
            color: #333; /* Dark text color for input fields */
            outline: none;
            transition: border-color 0.3s ease; /* Smooth border color transition */
        }

        .form-container input[type="text"]:focus,
        .form-container input[type="number"]:focus,
        .form-container select:focus,
        .form-container textarea:focus {
            border-color: #9b59b6; /* Updated border color on focus */
        }

        .form-container textarea {
            resize: vertical;
        }

        .form-container .button {
            background-color: #9b59b6; /* Gradient color for submit button */
            color: #fff;
            padding: 12px 24px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .form-container .button:hover {
            background-color: #71b7e6; /* Change to lighter gradient color on hover */
        }

        /* Existing form styles */
        .form-container table {
            width: 100%;
            margin-top: 40px; /* Added margin-top to further move the table down */
        }

        .form-container td {
            padding: 10px;
        }

        .form-container select {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        /* Search bar style */
        .search {
            position: relative;
        }

        .search input[type="text"] {
            padding: 8px 10px;
            border-radius: 8px;
            border: 1px solid #444;
            width: 150px;
        }
    </style>

</head>

<body>

<%@ include file="contentnavbar.jsp" %>
 
    <form method="post" action="displaycontent" class="form-container">
        <table align="center">
            <tr>
                <td>Select Content</td>
                <td>
                    <select name="cid" required>
                        <option value="">---Select---</option>
                        <c:forEach items="${contentlist}" var="content">
                            <option value="${content.id}">${content.id}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="View" class="button">
                </td>
            </tr>
        </table>
    </form>

</body>

</html>
