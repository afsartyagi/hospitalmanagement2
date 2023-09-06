<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Page</title>
<link rel="stylesheet" href="CSS/style1.css">
</head>
<body>
	<div id="back">


		<label id="text"> welcome to our hospital<br> servises<br></label>
		<div class="login-container">

			<form   action='login-action' method='post'>
				<h5 style="color: red">${msg } ${uid }</h5>
				<h1>Login!</h1>
				<input type="text" name="username" placeholder="Username"> <input
					type="text" name="password" placeholder="Password">
				<button  type="submit">Login</button>
				<a href="#">Forgotten password?</a>
				<hr style="border: 1cap;">
				</form><form  action='/mvc-demo/list' method='post'>
				<button id="b2" type="button" >Create an
					account</button>
			</form>
		</div>
	</div>
	<script>
	/*	function signup() {
			window.location.href = "/mvc-demo/list";
		}

		function login() {
			var name = document.getElementById("username").value;
			console.log(name);
			var password = document.getElementById("password").value;
			console.log(password);
			window.location.href = "/mvc-demo/authenticate-user/" + name + "/" + password;
		}*/
	</script>
	<script src="script.js"></script>
</body>
</html>
