<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Spring Boot Project</title>
    <style>
        body {
            background-image: url('images/bg.png');
            background-size: cover;
            background-position: cover;
            font-family: 'Open Sans', sans-serif;
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
            margin: 0 auto;
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

        .form-container label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #fff;
        }

        .form-container input[type="text"],
        .form-container input[type="password"],
        .form-container input[type="number"],
        .form-container input[type="email"],
        .form-container input[type="date"],
        .form-container select,
        .form-container textarea {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;
            font-size: 16px;
            background-color: #f2f2f2;
            color: #333;
            outline: none;
            transition: border-color 0.3s ease;
        }

        .form-container input[type="text"]:focus,
        .form-container input[type="number"]:focus,
        .form-container select:focus,
        .form-container textarea:focus {
            border-color: #9b59b6;
        }

        .form-container textarea {
            resize: vertical;
        }

        #myTableContainer {
            width: 90%;
            margin: auto;
            margin-top: 30px;
            margin-bottom: 50px; /* Added bottom margin for extra space */
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        #myTable {
            width: 100%;
            border-collapse: collapse;
            font-size: 16px;
            background-color: #fafafa;
        }

        #myTable th {
            background-color: #4a4a4a;
            color: #ffffff;
            font-weight: bold;
            padding: 16px;
            text-align: center;
            border: 1px solid #dddddd;
        }

        #myTable td {
            padding: 14px;
            text-align: center;
            border-bottom: 1px solid #dddddd;
            color: #333;
        }

        #myTable tr:nth-child(even) {
            background-color: #eaeaea;
        }

        #myTable tr:nth-child(odd) {
            background-color: #ffffff;
        }

        #myTable tr:hover {
            background-color: #c3e6cb;
        }

        #myInputContainer {
            width: 90%;
            margin: auto;
            margin-top: 50px; /* Increased top margin for spacing from navbar */
            display: flex;
            justify-content: center;
        }

        #myInput {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-bottom: 20px;
            box-sizing: border-box;
            transition: border-color 0.3s ease;
        }

        #myInput:focus {
            border-color: #9b59b6;
        }
    </style>

    <script>
        function myFunction() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("myInput");
            filter = input.value.toUpperCase();
            table = document.getElementById("myTable");
            tr = table.getElementsByTagName("tr");
            for (i = 1; i < tr.length; i++) { // Start from 1 to skip header row
                td = tr[i].getElementsByTagName("td")[2];
                if (td) {
                    txtValue = td.textContent || td.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        tr[i].style.display = "";
                    } else {
                        tr[i].style.display = "none";
                    }
                }
            }
        }
    </script>

</head>

<body>

    <%@ include file="contentnavbar.jsp" %>

    <h3 align="center"><u>View All Contents</u></h3>

    <div id="myInputContainer">
        <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Enter Content Name">
    </div>

    <div id="myTableContainer">
        <table id="myTable">
            <tr class="header">
                <th>ID</th>
                <th>Category</th>
                <th>Name</th>
                <th>Description</th>
                <th>Link</th>
                <th>Image</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>

            <c:forEach items="${contentlist}" var="content">
                <tr>
                    <td> <c:out value="${content.id}"></c:out> </td>
                    <td> <c:out value="${content.category}"></c:out> </td>
                    <td> <c:out value="${content.name}"></c:out> </td>
                    <td> <c:out value="${content.description}"></c:out> </td>
                    <td>
                        <a href='<c:url value="${content.url}" />'>Click Here</a>
                    </td>
                    <td>
                        <img src='displaycontentimage?id=${content.id}' width="80" height="80">
                    </td>
                    <td>
                        <a href="<c:url value='/updatecontent?id=${content.id}' />">Update</a>
                    </td>
                    <td>
                        <a href="<c:url value='/deletecontent?id=${content.id}' />">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>

</body>

</html>
