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
<title>Edit Lego Form</title>
</head>
<body>
<h1>Lego Review System</h1>
<br />
<h2> Lego Edit Form</h2>

<mvc:form modelAttribute="lego" action="editResult.mvc">
	<table>

	    <tr>
            <td><mvc:label path="name">Name</mvc:label></td>
            <td><mvc:input path="name" value = "${toEdit.name}" /></td>
        </tr>
		<tr>
            <td><mvc:label path="theme">Theme</mvc:label></td>
            <td><mvc:select path="theme" items="${themes}" value = "${toEdit.theme}" /></td>
        </tr>
        <tr>
            <td><mvc:label path="itemNumber">Item Number</mvc:label></td>
            <td><mvc:input path = "itemNumber" value = "${toEdit.itemNumber}" /></td>
        </tr>
		<tr>
            <td><mvc:label path="ageRange">Age Range</mvc:label></td>
            <td><mvc:select path="ageRange" items = "${ages}" value = "${toEdit.ageRange}" /></td>
        </tr>
        <tr>
            <td><mvc:label path="pieces">Pieces</mvc:label></td>
            <td><mvc:input path="pieces" value = "${toEdit.pieces}" /></td>
        </tr>
        <tr>
            <td><mvc:label path="cost">Cost</mvc:label></td>
            <td><mvc:input path="cost" value = "${toEdit.cost}" /></td>
        </tr>
	    <tr>
	   
	    <input type="hidden"  name = "id" value="${toEdit.id }"> 
	     <td colspan="2">
                <input type="submit" value="Update Lego" />
                </td>

	    </tr>
	</table>  
</mvc:form>
<a href = "viewAllLegos.mvc">View all Legos</a><br />
<a href = "reviewForm.mvc">Submit a Lego Review</a><br />
<a href = "viewAllReviews.mvc">View all Lego Reviews</a><br />
<br />
<img src="Error_Lego.jpg"/>
</body>
</html>
