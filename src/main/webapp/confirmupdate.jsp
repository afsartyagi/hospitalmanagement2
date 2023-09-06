

	
	<%@ include file="navbar.jsp"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<html>
    <body>
	<form action="confirmrecord1" method="post">
	<table border='1' class='tar' style='width:45% '>
	<tr style='background-color:orange;color:white'>
	<th colspan='2'>Patient details</th>
	</tr>
	<tr>
	<th align="left">Cid</th><td><input style="width:99%;" type='text' value='${student.id}'  name='id'></td>
	</tr>
	<tr>
	<th align="left">FirstName</th><td><input style="width:99%;" type='text' value='${student.name}'  name='name'></td>
	</tr>
	<tr>
	<th align="left">LastName</th><td><input style="width:99%;" type='text' value='${student.fathername}'  name='fathername'></td>
	</tr>
	<tr>
	<th align="left">City</th><td><input style="width:99%;" type='text' value='${student.city}'  name='city'></td>
	</tr>
	<tr>
	<th  align="left">PhoneNo</th><td><input style="width:99%;" type='text' value='${student.phone}'  name='phone'></td>
	</tr>
	<tr>
	<th align="left">Email</th><td><input style="width:99%;" type='text' value='${student.email}'  name='email'></td></tr>
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