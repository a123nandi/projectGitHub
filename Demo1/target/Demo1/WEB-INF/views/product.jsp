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
 
<form:form action="${addAction}" commandName="product"  method="POST">
<table class="table">
    <c:if test="${!empty ProductName}">
    <tr>
        <td>
            <form:label path="productId">
                <spring:message text="productId"/>
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
            <form:label path="ProductName">
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
                <spring:message text="ProductCategory"/>
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



<br>
<h3>Product List</h3>
<c:if test="${!empty listProduct}">
	<table class="tg">
	<tr>
		<th width="80">Product ID</th>
		<th width="120">Product Name</th>
		<th width="120">Product Category</th>
		<!-- <th width="60">Edit</th>
		<th width="60">Delete</th> -->
	</tr>
	<c:forEach items="${listProduct}" var="product">
		<tr>
			<td>${product.productId}</td>
			<td>${product.ProductName}</td>
			<td>${product.ProductCategory}</td>
			<%-- <td><a href="<c:url value='/edit/${product.productId}' />" >Edit</a></td>
			<td><a href="<c:url value='/remove/${product.productId}' />" >Delete</a></td> --%>
		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>