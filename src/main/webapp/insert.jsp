<%@ include file="navbar.jsp"%>
<html>
<body>
<form action="insert" method="post">
<table class='ta'>
<tr>
<td class='pd'>Enter patient ID<span>*</span></td>
<td ><input type='text' name='Id' class='tb' required></td>
<tr>
<tr>
<td class='pd'>Enter First Name<span>*</span></td>
<td ><input type='text' name='name' class='tb' required></td>
<tr>
<tr>
<td class='pd'>Enter Last father Name<span>*</span></td>
<td ><input type='text' name='fathername' class='tb' required></td>
<tr>
<tr>
<td class='pd'>Enter patient city<span>*</span></td>
<td ><input type='text' name='city' class='tb' required></td>
<tr>
<tr>
<td class='pd'>Enter patient phoneNo.<span>*</span></td>
<td ><input type='text' name='phone' class='tb' required></td>
<tr>
<tr>
<td class='pd'>Enter patient Email<span>*</span></td>
<td ><input type='text' name='email' class='tb' required></td>
<tr>
<tr>
<td colspan="2" align="right">
<input type="submit"class="bt"value="submit">
</table>
</form>
</body>
</html>