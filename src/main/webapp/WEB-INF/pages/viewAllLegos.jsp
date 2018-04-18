<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body {background-color: gray;}
h1 {color:darkblue; font-family: verdana; font-size: 225%; margin: 0px; text-align: center;}
h2 {color:darkred; font-family: verdana; font-size: 200%; margin: 0px; text-align: left;}
p {color: blue; font-family: verdana; font-size: 140%; margin: 5px;}   
ul {list-style: none}
li::before {content: "*  "; color: navy; font-size: 30px;}
a:link {
    color: darkgreen; font-family: verdana; font-size: 110%; font-weight: bold;}
/* visited link */
a:visited {
    color: darkgreen;}
/* mouse over link */
a:hover {
    color: darkorange;}
/* selected link */
a:active {
    color: yellow;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Legos</title>
</head>
<body>
<h1>Lego Review System</h1>
<br />
<h2> All Legos</h2>
<br />
<c:forEach items="${all}" var="item">
		<table>
			<tr>
				<td> </td>
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
				<td>ID:</td>
				<td>${item.id}</td>
			</tr>
			<tr>
				<td> </td>
				<td>Cost:</td>
				<td>$${item.cost}</td>
			</tr>
			</table>
		<br />
	<form action="deleteLego.mvc" method="POST"> 
		<input name="id" type="hidden" value="${item.id}">
		<input type="submit" value="Delete Lego & Reviews">
	</form>
		<form action="editLego.mvc" method="POST"> 
		<input name="id" type="hidden" value="${item.id}">
		<input type="submit" value="Edit Lego">
	</form>
		<hr style="text-align: left; margin-left: 0; width: 25%">
		<br />
		
	</c:forEach>


	<!--<a href="editLego.mvc">Edit Selected Lego</a><br />-->
	<a href="form.mvc">Add a New Lego</a><br />
	<a href="reviewForm.mvc">Submit a Lego Review</a>
</body>
</html>