<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3 style="color: red;">Register New User</h3>
	<div id="registerEmployee">
		<form:form action="/register" method="post" modelAttribute="user">
			<p>
				<label>Enter username</label>
				<form:input path="username" />
			</p>
			<p>
				<label>Enter password</label>
				<form:password path="password" />
			</p>
			
			<p>
				<label>User Role</label>
				<form:select path="role">
					<form:option value="ROLE_MANAGER">Manager</form:option>
					<form:option value="ROLE_ADMIN">Admin</form:option>
					<form:option value="ROLE_USER">User</form:option>
					<form:option value="ROLE_DEVELOPR">Developer</form:option>
				</form:select>
			
			</p>
			
			<input type="SUBMIT" value="Submit" />
		</form:form>
	</div>
</body>
</html>