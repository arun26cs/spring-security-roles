<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login page</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/authenticateTheUser" method="post">
		<c:if test="${param.error!=null}">
			<i>Sorry! error credentials check the username and password_ _ Arun..</i>
		
		</c:if>
		<p>
			Username: <input type="text" name="username"/>
		</p> 
		<p>
			Password: <input type="text" name="password"/>
		</p>
		<input type="submit" value="Login">
		
		<!-- mnual adding of csrf -->
		
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }"/>
	
	<form>
</body>
</html>