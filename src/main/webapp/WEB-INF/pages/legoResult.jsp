<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC From Handling</title>
</head>
<body> <h2>Lego Entry Result</h2>
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
        </table>
<a href = "viewAllLegos.mvc">View all Legos</a>
</body>
</html>