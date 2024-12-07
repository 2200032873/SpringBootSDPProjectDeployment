<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Tour Guide Registration</title>
    <style>
        /* General styling */
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
        .form-container input[type="number"] {
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
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>

    <div class="form-container">
        <h3><i class="fas fa-user-plus"></i> Register as a Tour Guide</h3>
        <form action="inserttourguide" method="post">
            <table>
                <tr>
                    <td><label for="tname">Enter Name</label></td>
                    <td><input type="text" id="tname" name="tname" required /></td>
                </tr>
                <tr>
                    <td><label for="tgender">Select Gender</label></td>
                    <td>
                        <input type="radio" id="tmale" name="tgender" value="MALE" required />
                        <label for="tmale">Male</label>
                        <input type="radio" id="tfemale" name="tgender" value="FEMALE" required />
                        <label for="tfemale">Female</label>
                        <input type="radio" id="tothers" name="tgender" value="OTHERS" required />
                        <label for="tothers">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="taddress">Enter Address</label></td>
                    <td><input type="text" id="taddress" name="taddress" required /></td>
                </tr>
                <tr>
                    <td><label for="temail">Enter Email ID</label></td>
                    <td><input type="email" id="temail" name="temail" required /></td>
                </tr>
                <tr>
                    <td><label for="tpwd">Enter Password</label></td>
                    <td><input type="password" id="tpwd" name="tpwd" required /></td>
                </tr>
                <tr>
                    <td><label for="tcontact">Enter Contact</label></td>
                    <td><input type="text" id="tcontact" name="tcontact" required /></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Register" />
                        <input type="reset" value="Clear" />
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
