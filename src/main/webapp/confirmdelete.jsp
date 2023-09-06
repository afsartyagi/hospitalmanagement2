

	
	<%@ include file="navbar.jsp"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<html>
    <body>
	<form action="deleterecord1" method="post">
	<table border='1' class='tar' style='width:45% '>
	<tr style='background-color:orange;color:white'>
	<th colspan='2'>Patient details</th>
	</tr>
	<tr>
	<th align="left">Cid</th><td>${student.id}<input type='hidden' value='${student.id}'  name='cid'></td>
	</tr>
	<tr>
	<th align="left">FirstName</th><td>${student.name}</td>
	</tr>
	<tr>
	<th align="left">LastName</th><td>${student.fathername}</td>
	</tr>
	<tr>
	<th align="left">City</th><td>${student.city}</td>
	</tr>
	<tr>
	<th  align="left">PhoneNo</th><td>${student.phone}</td>
	</tr>
	<tr>
	<th align="left">Email</th><td>${student.email}</td></tr>
	<tr>
	<td>
	<button  class='bt1'>confirm</button></td>
	<td><input type='button'class='bt1' value='cancel' onclick='history.back()'></td>
	</tr>
	</table>
	</form>
	<div style="text-align:centre;font-size:2vw;margin-top:20px;">
<h2>${msg}</h2></div>
</body>
</html>