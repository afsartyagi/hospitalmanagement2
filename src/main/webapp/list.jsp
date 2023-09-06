<%@ include file="navbar.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<body>
	<table border='1' class='tar'>
		<tr style='background-color: Orange; color: white;'>
			<th colspan='6'>Customer list</th>
		</tr>
		<tr>
			<th align='left'>cid</th>
			<th align='left'>firstname</th>
			<th align='left'>lastname</th>
			<th align='left'>city</th>
			<th align='left'>phoneNo</th>
			<th align='left'>Email</th>
		</tr>
		<c:forEach  var="s" items="${student}">
			<tr>
			    <td class='td'>${s.id}</td>
				<td class='td'>${s.name}</td>
				<td class='td'>${s.fathername}</td>
				<td class='td'>${s.city}</td>
				<td class='td'>${s.phone}</td>
				<td class='td'>${s.email}</td>
			</tr>
		</c:forEach>




	</table>
</body>
</html>