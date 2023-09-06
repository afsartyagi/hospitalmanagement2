<%@ include file="navbar.jsp"%>
<html>
<body>
<form action="updaterecord" method="post">
<table class='ta'>
<tr>
<td class='pd'>Enter patient ID</td>
<td ><input style="width: 200px;"  type='text' name='cid' class='tb' required></td>
<td colspan="2" align="right">
<button  class='bt1'>update record</button>
</td>
</table>
</form>
<div style="text-align:centre;font-size:2vw;margin-top:20px;">
<h2>${msg}</h2></div>
</body>
</html>