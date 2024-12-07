<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Registration</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
            min-height: 100vh;
            padding: 20px;
        }
        .form-container {
            background-color: #fff;
            padding: 30px;
            width: 400px;
            border-radius: 6px;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
        }
        .form-container h3 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
            font-size: 20px;
        }
        .form-container table {
            width: 100%;
        }
        .form-container label {
            font-size: 14px;
            color: #333;
            font-weight: 500;
        }
        .form-container input[type="text"],
        .form-container input[type="password"],
        .form-container input[type="email"],
        .form-container input[type="number"],
        .form-container input[type="date"] {
            width: 100%;
            padding: 10px;
            margin-top: 4px;
            font-size: 14px;
            border: 1px solid #aaa;
            border-radius: 5px;
            color: #333;
            outline: none;
        }
        .form-container input[type="submit"],
        .form-container input[type="reset"] {
            width: 48%; /* Adjust to have space between buttons */
            padding: 10px;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
            border: none;
            color: #fff;
            font-size: 16px;
            font-weight: 500;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin-top: 10px; /* Add space above buttons */
        }
        .form-container input[type="submit"]:hover,
        .form-container input[type="reset"]:hover {
            background: linear-gradient(-135deg, #71b7e6, #9b59b6);
        }
        .form-container .button-container {
            text-align: center;
            margin-top: 15px;
        }
        .form-container .message {
            color: #d9534f; /* Error message color */
            text-align: center;
            margin-bottom: 10px; /* Space between message and form */
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    
    <div class="form-container">
        <h3><i class="fas fa-user-plus"></i> <u>User Registration</u></h3>
        <form method="post" action="insertuser">
            <table>
                <tr>
                    <td><label for="uname"><i class="fas fa-user"></i> Enter Name</label></td>
                    <td><input type="text" id="uname" name="uname" required/></td>
                </tr>
                <tr>
                    <td><label><i class="fas fa-venus-mars"></i> Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="ugender" value="MALE" required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="ugender" value="FEMALE" required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="ugender" value="OTHERS" required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="udob"><i class="fas fa-calendar-alt"></i> Enter Date of Birth</label></td>
                    <td><input type="date" id="udob" name="udob" required/></td>
                </tr>
                <tr>
                    <td><label for="ulocation"><i class="fas fa-map-marker-alt"></i> Enter Location</label></td>
                    <td><input type="text" id="ulocation" name="ulocation" required/></td>
                </tr>
                <tr>
                    <td><label for="uemail"><i class="fas fa-envelope"></i> Enter Email ID</label></td>
                    <td><input type="email" id="uemail" name="uemail" required/></td>
                </tr>
                <tr>
                    <td><label for="upwd"><i class="fas fa-lock"></i> Enter Password</label></td>
                    <td><input type="password" id="upwd" name="upwd" required/></td>
                </tr>
                <tr>
                    <td><label for="ucontact"><i class="fas fa-phone"></i> Enter Contact</label></td>
                    <td><input type="number" id="ucontact" name="ucontact" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Register"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
