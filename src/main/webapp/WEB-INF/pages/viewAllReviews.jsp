<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Reviews</title>
</head>
<body>
<h2> All Reviews</h2>
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