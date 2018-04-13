<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Legos</title>
</head>
<body>

<c:forEach items="${all}" var="item">
		<table>
			<tr>
				<td>${item.id}</td>
				</tr>
				<tr>
				
				<td>Name:</td>
				<td>${item.name}</td>
			</tr>
			<tr>
				<td> </td>
				<td>Theme:</td>
				<td>${item.theme}</td>
			</tr>
			<tr>
				<td> </td>
				<td>Item Number:</td>
				<td>${item.itemNumber}</td>
			</tr>
			<tr>
				<td> </td>
				<td>Age Range:</td>
				<td>${item.ageRange}</td>
			</tr>
			<tr>
				<td> </td>
				<td>Pieces:</td>
				<td>${item.pieces}</td>
			</tr>
			<tr>
				<td> </td>
				<td>Cost:</td>
				<td>${item.cost}</td>
			</tr>
			</table>
		
		<br />
	<form action="deleteLego.mvc" method="POST"> 
		<input name="id" type="hidden" value ="${item.id}">
		<input type="submit" value= "Delete Lego">
	</form>
		<hr style="text-align: left; margin-left: 0; width: 25%">
		<br />
		
	</c:forEach>
	
	<a href="editLego.mvc">Edit Selected Lego</a><br />
	<a href="form.mvc">Add a new lego</a><br />
	<a href = "reviewForm.mvc">Submit a Lego Review</a>
</body>
</html>