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
<title>All Reviews</title>
</head>
<body>
<h1>Lego Review System</h1>
<br />
<h2> All Reviews</h2>
<br />
<mvc:form modelAttribute="review" >
<c:forEach items="${allR}" var="item">
		<table>
			<tr>
				<td>Name:</td>
				<td>${item.name}</td>
			</tr>
			<tr>
				<td>Gender:</td>
				<td>${item.gender}</td>
			</tr>
			<tr>
				<td>Age:</td>
				<td>${item.age}</td>
			</tr>
			<tr>
				<td>Lego Id:</td>
				<td>${item.legoId}</td>
			</tr>
			<tr>
				<td>Review:</td>
				<td>${item.review}</td>
			</tr>
			</table>
		<br />
		<hr style="text-align: left; margin-left: 0; width: 25%">
		<br />
	</c:forEach>
</mvc:form>
<a href = "viewAllLegos.mvc">View All Legos</a><br />
<a href = "reviewForm.mvc">Submit a Lego Review</a><br />
</body>
</html>