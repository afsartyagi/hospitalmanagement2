

	
	<%@ include file="navbar.jsp"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<html>
    <body>
	
	<table border='1' class='tar' style='width:45% '>
	<tr style='background-color:orange;color:white'>
	<th colspan='2'>Patient details</th>
	</tr>
	<tr>
	<th align="left">Cid</th><td>${student.id}</td>
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
	</table>
  
</body>
</html>