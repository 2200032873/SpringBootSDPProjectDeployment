<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head><title>Delete Content</title></head>
<body>
    <h2>Are you sure you want to delete the following content?</h2>
    <p>Title: ${content.title}</p>
    <p>Description: ${content.description}</p>
    <form method="post" action="<c:url value='/deletecontent'/>">
        <input type="hidden" name="id" value="${content.id}" />
        <button type="submit">Delete</button>
        <a href="<c:url value='/viewallcontents'/>">Cancel</a>
    </form>
</body>
</html>

