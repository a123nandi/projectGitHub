<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

		<h1>
    Add a User
</h1>

 <c:url var="addAction" value="/add/user" ></c:url>
 
<form:form action="${addAction}" commandName="user"  method="POST">
<table class="table">
    <c:if test="${!empty name}">
    <tr>
        <td>
            <form:label path="userid">
                <spring:message text="ID"/>
            </form:label>
        </td>
        <td>
            <form:input path="id" readonly="true" size="8" />
           <!--  <form:hidden path="id" /> -->
        </td> 
    </tr>
    </c:if> 
    <tr>
        <td>
            <form:label path="name">User Name
                 <%-- <spring:message text="Name"/>  --%>
            </form:label>
        </td>
        <td>
            <form:input path="name" />
        </td> 
        
    </tr>
    <tr>
        <td>
            <form:label path="email">
                <spring:message text="User Email"/>
            </form:label>
        </td>
        <td>
            <form:input path="email" />
        </td>
    </tr>
    <tr>
        <td>
            <form:label path="password">
                <spring:message text="Enter Password"/>
            </form:label>
        </td>
        <td>
            <form:input path="password" />
        </td>
        
    </tr>
     <tr>
        <td colspan="2">
            <c:if test="${empty name}">
                <input type="submit" text="Add User"/>
            </c:if>
        </td>
    </tr>
    
</table>
</form:form>

</body>
</html>