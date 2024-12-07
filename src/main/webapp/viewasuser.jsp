<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Spring Boot Project</title>
    <style>
        /* CSS styles (merged and improved) */
        @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap");

        * {
            box-sizing: border-box;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }

        html, body {
            width: 100%;
            margin: 0;
            padding: 0;
        }

        body {
            color: #001c35;
            background-color: #e3eafc;
            font-family: "Poppins", sans-serif;
        }

        h1 {
            font-size: 32px;
            font-style: italic;
            margin-bottom: 3rem;
        }

        h2 {
            font-size: 20px;
            margin: 0 0 1rem 0;
            line-height: 1.2;
            overflow-wrap: break-word;
            text-overflow: ellipsis;
        }

        p {
            font-size: 14px;
            margin: 0.5rem 0;
            overflow-wrap: break-word;
        }

        section {
            width: 100%;
            max-width: 100%;
            padding: 4rem 1rem;
            margin: 0 auto;
        }

        section img {
            width: 100%;
            max-width: 100%;
            height: 100%;
            max-height: 200px;
            object-fit: cover;
            margin: 1rem 0;
            display: block;
            border-radius: 8px;
        }

        .card-container {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 16px;
            margin-top: 20px;
        }

        .card {
            width: 100%;
            padding: 16px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px;
            display: none; /* Default hidden */
            flex-direction: column;
            height: 100%;
        }

        @media screen and (max-width: 1200px) {
            .card-container {
                grid-template-columns: repeat(3, 1fr);
            }
        }

        @media screen and (max-width: 800px) {
            .card-container {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media screen and (max-width: 580px) {
            .card-container {
                grid-template-columns: 1fr;
            }
        }

        /* Search Box */
        #myInputContainer {
            width: 90%;
            margin: auto;
            margin-top: 30px;
        }

        #myInput {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            transition: border-color 0.3s ease;
        }

        #myInput:focus {
            border-color: #9b59b6;
        }

        .button {
            padding: 10px 20px;
            background-color: #9b59b6;
            color: white;
            text-align: center;
            text-decoration: none;
            border-radius: 4px;
            margin-top: 10px;
            display: inline-block;
            transition: background-color 0.3s;
        }

        .button:hover {
            background-color: #8e44ad;
        }

        #categorySelect {
            width: 90%;
            margin: auto;
            padding: 12px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-top: 30px;
        }

        #categoryMessage {
            color: red;
            font-size: 16px;
            text-align: center;
            margin-top: 10px;
            display: none; /* Hide by default */
        }
    </style>

    <script>
        function myFunction() {
            var input = document.getElementById("myInput").value.toUpperCase();
            var categoryValue = document.getElementById("categorySelect").value.toUpperCase();
            var cards = document.getElementsByClassName("card");
            var categoryMessage = document.getElementById("categoryMessage");

            if (categoryValue === "") {
                categoryMessage.style.display = "block";  // Show message if no category selected
                Array.from(cards).forEach(card => card.style.display = "none");
            } else {
                categoryMessage.style.display = "none";  // Hide message if category is selected
                Array.from(cards).forEach(card => {
                    var title = card.getElementsByTagName("h2")[0];
                    var categoryText = card.getElementsByTagName("p")[1];
                    if (title && categoryText) {
                        var titleText = title.textContent || title.innerText;
                        var cardCategory = categoryText.textContent || categoryText.innerText;
                        if (titleText.toUpperCase().includes(input) && cardCategory.toUpperCase().includes(categoryValue)) {
                            card.style.display = "block";  // Show card if it matches
                        } else {
                            card.style.display = "none";  // Hide card if no match
                        }
                    }
                });
            }
        }

        window.onload = myFunction;  // Hide cards on load if no category selected
    </script>
</head>

<body>
    <%@ include file="usernavbar.jsp" %>

    <h3 align="center"><u>View All Contents</u></h3>

    <div id="categorySelectContainer">
        <select id="categorySelect" onchange="myFunction()">
            <option value="">---Select Category---</option>
            <option value="Monuments">Monuments</option>
            <option value="Festivals">Festivals</option>
            <option value="Cuisines">Cuisines</option>
        </select>
    </div>

    <div id="categoryMessage">
        <strong>Please select a category first.</strong>
    </div>

    <div id="myInputContainer">
        <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Enter Content Name">
    </div>

    <section class="card-container">
        <c:forEach items="${contentlist}" var="content">
            <div class="card">
                <h2><c:out value="${content.name}"></c:out></h2>
                <img src='displaycontentimage?id=${content.id}' alt="Content Image">
                <p><c:out value="${content.description}"></c:out></p>
                <p><c:out value="${content.category}"></c:out></p>
                <a href="<c:url value='${content.url}' />" class="button">Visit Content</a>
                 <a href="<c:url value='/feedback.jsp?contentId=${content.id}' />" class="button">Feedback</a>
                 
            </div>
        </c:forEach>
    </section>

</body>

</html>