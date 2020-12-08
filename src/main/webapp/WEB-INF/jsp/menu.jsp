<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div style="border: 1px solid #ccc; padding: 5px; margin-bottom: 20px;">

	<a href="${pageContext.request.contextPath}/welcome">Home</a> | &nbsp;

	<a href="${pageContext.request.contextPath}/addNewEmployee">Add
        Employee</a> |   <a
        href="${pageContext.request.contextPath}/getEmployees">Show
        Employees</a> |   <h2 style="color: red;">
            <a onclick="document.forms['logoutForm'].submit()">Logout</a>
            </h2>

    <form:form id="logoutForm" method="POST" action="${contextPath}/logout">
    </form:form>

</div>