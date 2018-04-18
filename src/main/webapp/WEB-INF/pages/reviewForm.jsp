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
<title>Review Entry</title>
</head>
<body>
<h1>Lego Review System</h1>
<br />
<h2> Lego Review Entry Form</h2>
<br />
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
<br />
<a href = "viewAllReviews.mvc">View all Reviews</a><br />
<br />
<img src="LegoReview.jpg"/>
</body>
</html>