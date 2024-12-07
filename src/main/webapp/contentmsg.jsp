<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Message</title>
    <style>
        /* Base body styles */
        body {
            background-image: url('images/bg.png'); /* Set background image */
            background-size: cover; /* Make background cover entire area */
            background-attachment: fixed; /* Fix background on scroll */
            font-family: 'Open Sans', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #ffffff; /* Set default text color for contrast */
        }

        /* Form container styling */
        .form-container {
            max-width: 500px;
            margin: 100px auto;
            padding: 25px 30px;
            background: linear-gradient(135deg, #6a85b6, #bac8e0); /* Softer gradient */
            color: #333; /* Darker text color inside the container */
            border-radius: 15px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2); /* Enhanced shadow */
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            text-align: center;
        }

        /* Lift effect on hover */
        .form-container:hover {
            transform: translateY(-8px);
            box-shadow: 0 12px 20px rgba(0, 0, 0, 0.25); /* Darker shadow */
        }

        /* Message text styling */
        .form-container p {
            font-size: 22px;
            font-weight: bold;
            color: #333; /* Set to darker color for readability */
            padding: 15px 25px;
            background: linear-gradient(145deg, #f9f9f9, #e0e0e0); /* Light gradient for contrast */
            border-radius: 10px;
            display: inline-block;
            box-shadow: inset 4px 4px 8px rgba(0, 0, 0, 0.1), inset -4px -4px 8px rgba(255, 255, 255, 0.6);
        }

        /* Input styling */
        .form-container input[type="text"],
        .form-container input[type="number"],
        .form-container select,
        .form-container textarea {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 16px;
            background-color: #f4f4f4; /* Light background for inputs */
            color: #333; /* Dark text color */
            outline: none;
            transition: border-color 0.3s ease;
        }

        /* Focus state for inputs */
        .form-container input[type="text"]:focus,
        .form-container input[type="number"]:focus,
        .form-container select:focus,
        .form-container textarea:focus {
            border-color: #6a85b6; /* Set focus color */
        }

        /* Resize only vertical for textareas */
        .form-container textarea {
            resize: vertical;
        }

        /* Button styling */
        .form-container .button {
            display: inline-block;
            margin-top: 20px;
            padding: 12px 28px;
            font-size: 18px;
            font-weight: bold;
            color: #fff;
            background: linear-gradient(145deg, #5a9e6d, #4a8e5f); /* Softer green gradient */
            border: none;
            border-radius: 25px;
            box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.2), -5px -5px 15px rgba(255, 255, 255, 0.8);
            cursor: pointer;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        /* Hover state for button */
        .form-container .button:hover {
            background: linear-gradient(145deg, #4a8e5f, #5a9e6d); /* Reverse gradient */
            transform: scale(1.05); /* Subtle zoom */
            box-shadow: 8px 8px 20px rgba(0, 0, 0, 0.3), -8px -8px 20px rgba(255, 255, 255, 0.8);
        }
    </style>
</head>
<body>
    <div class="form-container">
        <p>${message}</p>
        <a href="addcontent" class="button">Back</a>
    </div>
</body>
</html>
