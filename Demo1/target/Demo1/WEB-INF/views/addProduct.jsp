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
    Add a Product
</h1>

 <c:url var="addAction" value="/add/product" ></c:url>
 
<form:form action="add/product" commandName="user"  method="POST">
<table class="table">
    <c:if test="${!empty name}">
    <tr>
        <td>
            <form:label path="productId">
                <spring:message text="ID"/>
            </form:label>
        </td>
        <td>
            <form:input path="productId" readonly="true" size="8" />
           <!--  <form:hidden path="id" /> -->
        </td> 
    </tr>
    </c:if> 
    <tr>
        <td>
            <form:label path="ProductName">ProductName
                 <spring:message text="ProductName"/> 
            </form:label>
        </td>
        <td>
            <form:input path="ProductName" />
        </td> 
        
    </tr>
    <tr>
        <td>
            <form:label path="ProductCategory">
                <%-- <spring:message text="User Email"/> --%>
            </form:label>
        </td>
        <td>
            <form:input path="ProductCategory" />
        </td>
    </tr>
    
     <tr>
        <td colspan="2">
            <c:if test="${empty ProductName}">
                <input type="submit" text="Add Product"/>
            </c:if>
        </td>
    </tr>
    
</table>
</form:form>

</body>
</html>