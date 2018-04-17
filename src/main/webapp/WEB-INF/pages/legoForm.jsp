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
<h2> Lego Entry Form</h2>
<mvc:form modelAttribute="lego" action="result.mvc">
	<table>
	  
	    	<tr>
	        <td><mvc:label path="name">Name</mvc:label></td>
	        <td><mvc:input path="name" /></td>
	    </tr>
	     <tr>
	        <td><mvc:label path="theme">Theme</mvc:label></td>
	        <td><mvc:select path="theme" items="${themes}" /></td>
	    </tr>
	     <tr>
	        <td><mvc:label path="itemNumber">Item Number</mvc:label></td>
	        <td><mvc:input path="itemNumber" /></td>
	    </tr>
	     <tr>
	        <td><mvc:label path="ageRange">Age Range</mvc:label></td>
	        <td><mvc:select path="ageRange" items = "${ages}" /></td>
	    </tr>
	     <tr>
	        <td><mvc:label path="pieces">Pieces</mvc:label></td>
	        <td><mvc:input path="pieces" /></td>
	    </tr>
	     <tr>
	        <td><mvc:label path="cost">Cost</mvc:label></td>
	        <td><mvc:input path="cost" /></td>
	    </tr>
	    <tr>
	        <td colspan="2">
                <input type="submit" value="Add Lego" />
	        </td>
	    </tr>
	</table>  
</mvc:form>
<a href = "viewAllLegos.mvc">View All Legos</a><br />
<a href = "reviewForm.mvc">Submit a Lego Review</a><br />
<a href = "viewAllReviews.mvc">View All Lego Reviews</a><br />
</body>
</html>