<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Delete Tour Guide</title>
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500;600&display=swap");

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Open Sans", sans-serif;
        }

        :root {
            --background-light: #f4f4f4;
            --background-dark: #2c3e50;
            --text-light: #fff;
            --text-dark: #333;
            --navbar-bg: #4070f4;
            --navbar-hover-bg: #365eab;
            --table-header-bg: #4070f4;
            --table-header-text: #fff;
            --table-row-bg: #f9f9f9;
            --table-row-hover: #e0e7ff;
            --table-row-alt-bg: #f1f1f1;
        }

        body {
            background: linear-gradient(135deg, #A1BE95, #F98866);
            color: var(--text-dark);
            padding: 0 20px;
            transition: all 0.5s ease;
            padding-top: 70px; /* Space for fixed navbar */
        }

        body.dark {
            background-color: var(--background-dark);
            color: var(--text-light);
        }

        /* Navbar */
        .navbar {
            background-color: var(--navbar-bg);
            padding: 15px;
            text-align: center;
            color: var(--text-light);
            font-size: 18px;
            margin-bottom: 20px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
            position: fixed; /* Fixed position */
            top: 0; /* At the top */
            left: 0; /* Full width */
            right: 0; /* Full width */
            z-index: 1000; /* Ensure it stays on top */
            transition: background-color 0.3s ease;
        }

        .navbar:hover {
            background-color: var(--navbar-hover-bg);
        }

        /* Table styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            overflow: hidden; /* To round the corners */
        }

        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: var(--table-header-bg);
            color: var(--table-header-text);
            text-transform: uppercase;
        }

        tr:nth-child(even) {
            background-color: var(--table-row-bg);
        }

        tr:nth-child(odd) {
            background-color: var(--table-row-alt-bg);
        }

        tr:hover {
            background-color: var(--table-row-hover);
        }

        /* Dark mode for table */
        body.dark table th {
            background-color: #34495e;
        }

        body.dark table tr:nth-child(even) {
            background-color: #3e5060;
        }

        body.dark table tr:nth-child(odd) {
            background-color: #2c3e50;
        }

        body.dark table tr:hover {
            background-color: #495a6c;
        }

        /* Page header styling */
        h3 {
            color: var(--text-dark);
            text-align: center;
            margin-top: 10px;
            font-size: 24px;
        }

        body.dark h3 {
            color: var(--text-light);
        }
    </style>
</head>
<body>
    <%@include file="adminnavbar.jsp" %>

    <h3><u>Delete Tour Guide</u></h3>

    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>EMAIL</th>
            <th>ADDRESS</th>
            <th>CONTACT</th>
            <th>STATUS</th>
            <th>ACTION</th>
        </tr>
        <c:forEach items="${tourGuideList}" var="tourGuide">
            <tr>
                <td><c:out value="${tourGuide.id}"/></td>
                <td><c:out value="${tourGuide.name}"/></td>
                <td><c:out value="${tourGuide.gender}"/></td>
                <td><c:out value="${tourGuide.email}"/></td>
                <td><c:out value="${tourGuide.address}"/></td>
                <td><c:out value="${tourGuide.contact}"/></td>
                <td><c:out value="${tourGuide.status}"/></td>
                <td>
                    <a href='<c:url value="deletetourguideaction?id=${tourGuide.id}"></c:url>' 
                       onclick="return confirm('Are you sure you want to delete this tour guide?');">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
