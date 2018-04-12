<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Lego MVC Form</title>
</head>
<body>
<h2> Lego Edit Form</h2>
<mvc:form modelAttribute="lego" action="editLego.mvc">
	<table>
	    <tr>
            <td>Name</td>
            <td>${l.name}</td>
        </tr>
		<tr>
            <td>Theme</td>
            <td>${l.theme}</td>
        </tr>
        <tr>
            <td>Item Number</td>
            <td>${l.itemNumber}</td>
        </tr>
		<tr>
            <td>Age Range</td>
            <td>${l.ageRange}</td>
        </tr>
        <tr>
            <td>Pieces</td>
            <td>${l.pieces}</td>
        </tr>
        <tr>
            <td>Cost</td>
            <td>${l.cost}</td>
        </tr>
	    <tr>
	        <td colspan="2">
                <input type="submit" value="Edit Lego" />
	        </td>
	    </tr>
	</table>  
</mvc:form>
<a href = "viewAllLegos.mvc">View all Legos</a><br />
<a href = "reviewForm.mvc">Submit a Lego Review</a><br />
<a href = "viewAllReviews.mvc">View all Lego Reviews</a><br />
</body>
</html>