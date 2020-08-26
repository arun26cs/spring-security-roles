<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>welcome to home</title>
</head>
<body>

	<h2>Welcome to home</h2>
	<br>
	User: <security:authentication property="principal.username"/>
 	<br><br>
 	User roles: <security:authentication property="principal.authorities"/>
 	<br><br>
 	
 	<security:authorize access="hasRole('MANAGER')">
 		<a href="${pageContext.request.contextPath}/leader">Manager</a>
 		<br><br>
 	</security:authorize>
 	<security:authorize access="hasRole('ADMIN')">
	 	<a href="${pageContext.request.contextPath}/system">system admin</a>
	 	<br><br>
 	</security:authorize >
 	
 	<form:form action="${pageContext.request.contextPath}/logout">
 		<input type="submit" value="logot">
 	</form:form>
</body>
</html>