<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Fail</title>
    
</head>
<body>
    <div class="content-container">
        <div class="content-box">
            <h2><c:out value="${message}"></c:out></h2>
            <a href="adminlogin">Try Again</a>
        </div>
    </div>
</body>
</html>
