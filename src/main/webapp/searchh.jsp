<%@ include file="navbar.jsp"%>
<html>
<body>
<form action="searchrecord" method="post">
<table class='ta'>
<tr>
<td class='pd'>Enter patient ID</td>
<td style='with:50%'><input type='text' name='cid' class='tb' required></td>
<td colspan="2" align="right">
<button class='bt'>Search record</button>
</td>
</table>
</form>
<div style="text-align:centre;font-size:2vw;margin-top:20px;">
<h2>${msg}</h2></div>
</body>
</html>