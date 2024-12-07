<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Content</title>
    <style>
        /* Existing and New Styles Merged */
        body {
            background-image: url('images/bg.png');
            background-size: cover;
            background-position: center;
            font-family: 'Open Sans', sans-serif;
        }

        .form-container {
            max-width: 500px;
            margin: 100px auto; /* Increased top margin to position the form lower */
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .form-container:hover {
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
        }

        .form-container h3 {
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
        }

        .form-container .button {
            background-color: #e74c3c;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        .form-container .button:hover {
            background-color: #c0392b;
        }
    </style>
</head>

<body>

    <%@ include file="contentnavbar.jsp" %>

    <div class="form-container">
        <h3>Delete Content</h3>
        <p>Are you sure you want to delete this content?</p>
        <form action="deletecontent" method="post">
            <input type="hidden" name="id" value="${content.id}" />
            <input type="submit" value="Delete Content" class="button" />
        </form>
    </div>

</body>

</html>
