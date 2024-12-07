<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Content</title>
    <style>
        body {
            background-image: url('images/bg.png');
            background-size: cover;
            background-position: center;
            font-family: 'Open Sans', sans-serif;
        }

        .form-container {
            max-width: 400px; /* Set to medium width */
            margin: 40px auto; /* Centering the container */
            padding: 20px;
            background-color: #f2f2f2;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
            color: #fff;
            transition: box-shadow 0.3s ease;
        }

        .form-container:hover {
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
        }

        .form-container table {
            width: 100%;
            margin-top: 20px;
        }

        .form-container td {
            padding: 10px;
        }

        .form-container input[type="text"],
        .form-container input[type="file"],
        .form-container textarea {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
            background-color: #f2f2f2;
            color: #333;
            outline: none;
            transition: border-color 0.3s ease;
        }

        .form-container input[type="text"]:focus,
        .form-container textarea:focus {
            border-color: #9b59b6;
        }

        .form-container input[type="file"] {
            padding: 8px;
        }

        .form-container textarea {
            resize: vertical;
        }

        .form-container .button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        .form-container .button:hover {
            background-color: #45a049;
        }

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

    <h3 align="center"><u>Update Content</u></h3>

    <div class="form-container">
        <form action="updatecontent" method="post" enctype="multipart/form-data">
            <input type="hidden" name="id" value="${content.id}" />
            <table>
                <tr>
                    <td>Category:</td>
                    <td><input type="text" name="category" value="${content.category}" /></td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name" value="${content.name}" /></td>
                </tr>
                <tr>
                    <td>Description:</td>
                    <td><textarea name="description">${content.description}</textarea></td>
                </tr>
            
                <tr>
                    <td>Content Link:</td>
                    <td><input type="text" name="contentlink" value="${content.url}" /></td>
                </tr>
                <tr>
                    <td>Content Image:</td>
                    <td><input type="file" name="contentimage" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Update Content" class="button" />
                    </td>
                </tr>
            </table>
        </form>
    </div>

</body>

</html> 
