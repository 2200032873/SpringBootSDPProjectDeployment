<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
<%@ page import="com.klef.jfsd.springboot.model.TourGuide" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Tour Guide Profile</title>
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
            padding: 10px;
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

        h1 {
            text-align: center;
            color: #333;
            font-size: 24px;
            font-weight: 600;
            text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.2);
            margin-bottom: 15px;
        }

        form {
            width: 100%;
            margin: 0;
        }

        form input[type="text"],
        form input[type="password"],
        form input[type="number"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
            margin-bottom: 10px;
        }

        form button {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 14px;
            background-color: #4070f4;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        form button:hover {
            background-color: #ff8c00;
        }

        label {
            font-weight: bold;
            color: #555;
            margin-bottom: 5px;
            display: block;
        }

        .icon {
            margin-right: 10px;
            font-size: 22px;
            color: #ff8c00;
        }
    </style>
</head>
<body>
    <%@ include file="tourguidenavbar.jsp" %>
    
    <div class="form-container">
        <h1>Update Profile</h1>
        <form action="updatetourguideprofile" method="post">
            <input type="hidden" name="tid" value="${tourguide.id}">
            
            <label for="tname"><span class="icon">👤</span>Name:</label>
            <input type="text" id="tname" name="tname" value="${tourguide.name}" required><br>
            
            <label for="tgender"><span class="icon">🧑‍💼</span>Gender:</label>
            <input type="text" id="tgender" name="tgender" value="${tourguide.gender}" required><br>
            
            <label for="taddress"><span class="icon">🏠</span>Address:</label>
            <input type="text" id="taddress" name="taddress" value="${tourguide.address}" required><br>
            
            <label for="tpwd"><span class="icon">🔑</span>Password:</label>
            <input type="password" id="tpwd" name="tpwd" value="${tourguide.password}" required><br>
            
            <label for="tcontact"><span class="icon">📞</span>Contact:</label>
            <input type="text" id="tcontact" name="tcontact" value="${tourguide.contact}" required><br>

            <button type="submit"><span class="icon">💾</span>Update</button>
        </form>
    </div>
</body>
</html>
