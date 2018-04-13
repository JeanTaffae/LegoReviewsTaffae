<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC Result Handling</title>
</head>
<body>
<h2>Review Entry Result</h2>
    <table>
        <tr>
            <td>Name</td>
            <td>${r.name}</td>
        </tr>
		<tr>
            <td>Gender</td>
            <td>${r.gender}</td>
        </tr>
        <tr>
            <td>Age</td>
            <td>${r.age}</td>
        </tr>
		<tr>
            <td>Lego</td>
            <td>${r.legoId}</td>
        </tr>
        <tr>
            <td>Review</td>
            <td>${r.review}</td>
        </tr>
        </table>
<a href = "viewAllReviews.mvc">View all Reviews</a>
</body>
</html>