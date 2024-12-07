<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Spring Boot Project</title>
    
    <style>
        /* Body background and font styling */
        body {
            background-image: url('images/bg.png'); /* Set the background image */
            background-size: cover; /* Cover the entire body */
            background-position: center; /* Center the image */
            font-family: 'Open Sans', sans-serif; /* Consistent font family */
            margin: 0;
            padding: 0;
        }

        /* Card styling */
        .card {
            width: 40%;
            margin: auto;
            padding: 20px;
            text-align: center;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            background-color: #f9f9f9;
        }

        .card img {
            width: 50%;
            border-radius: 8px;
            margin-bottom: 20px;
        }

        .card h1, .card h2 {
            color: #333;
            margin: 10px 0;
        }

        .card p {
            color: #555;
            margin: 10px 0;
            font-size: 16px;
        }

        .card a {
            color: #4CAF50;
            text-decoration: none;
            font-weight: bold;
        }

        .card a:hover {
            text-decoration: underline;
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

        /* Button styling */
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

        /* Form container styling */
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

        /* Form table styling */
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
    </style>

</head>

<body>

<%@ include file="contentnavbar.jsp" %> <!-- Updated navbar include -->

<h3 align=center><u>View Content by Category</u></h3> <!-- Updated heading -->

<br>

<form action="displaycontentsbycategory" method="post" class="form-container"> <!-- Updated action -->

<table align=center>

<tr>
<td><label>Category</label></td>
<td>
<select name="category" required="required">
<option value="">---Select---</option>
<option value="Monuments">Monuments</option>
<option value="Festivals">Festivals</option>
<option value="Cuisines">Cuisines</option>
</select>
</td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="View" class="button"></td>
</tr>

</table>

</form>
    
</body>

</html>
