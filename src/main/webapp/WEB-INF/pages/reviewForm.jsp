<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC Form Handling</title>
</head>
<body>
<h2> Lego Review Entry Form</h2>
<mvc:form modelAttribute="review"  action="reviewResult.mvc" >

	<table>
	    <tr>
	        <td><mvc:label path="name">Name</mvc:label></td>
	        <td><mvc:input path="name" /></td>
	    </tr>
	     <tr>
	        <td><mvc:label path="gender">Gender</mvc:label></td>
	        <td><mvc:radiobuttons path="gender" /></td>
	    </tr>
	     <tr>
	        <td><mvc:label path="age">Age</mvc:label></td>
	        <td><mvc:input path="age" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="legoId">Lego</mvc:label></td>
	         <td><mvc:select path="legoId" items= "${allLegos}"/> </td>
	        
	    </tr>
	    <tr>
	        <td><mvc:label path="review">Review</mvc:label></td>
	        <td><mvc:select path="review" items="${reviews}" /></td>
	    </tr>
	    <tr>
	        <td colspan="2">
                <input type="submit" value="Add Review" />
	        </td>
	    </tr>
	</table>  
</mvc:form>
<a href = "viewAllReviews.mvc">View all Reviews</a>
</body>
</html>