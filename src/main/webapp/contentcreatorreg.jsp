<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Content Creator Registration</title>
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
        <h3><i class="fas fa-user-plus"></i> Content Creator Registration</h3>
        <form method="post" action="insertcontentcreator">
            <table>
                <tr>
                    <td><label for="cname">Enter Name</label></td>
                    <td><input type="text" id="cname" name="cname" required /></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="cmale" name="cgender" value="MALE" required />
                        <label for="cmale">Male</label>
                        <input type="radio" id="cfemale" name="cgender" value="FEMALE" required />
                        <label for="cfemale">Female</label>
                        <input type="radio" id="cothers" name="cgender" value="OTHERS" required />
                        <label for="cothers">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="caddress">Enter Address</label></td>
                    <td><input type="text" id="caddress" name="caddress" required /></td>
                </tr>
                <tr>
                    <td><label for="cemail">Enter Email ID</label></td>
                    <td><input type="email" id="cemail" name="cemail" required /></td>
                </tr>
                <tr>
                    <td><label for="cpwd">Enter Password</label></td>
                    <td><input type="password" id="cpwd" name="cpwd" required /></td>
                </tr>
                <tr>
                    <td><label for="ccontact">Enter Contact</label></td>
                    <td><input type="number" id="ccontact" name="ccontact" required /></td>
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
