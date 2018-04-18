<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>
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
<title>Review Entry Result</title>
</head>
<body>
<h1>Lego Review System</h1>
<br />
<h2>Review Entry Result</h2>
<br />
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
<br />
<a href = "viewAllReviews.mvc">View all Reviews</a><br />
<a href = "reviewForm.mvc">Submit a New Lego Review</a><br />
<a href = "viewAllLegos.mvc">View All Legos</a><br />
</body>
</html>