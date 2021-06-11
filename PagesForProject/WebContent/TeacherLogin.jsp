<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Teacher Login Form</title>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<link rel="stylesheet" href="StudentLogin.css">
<script src="https://kit.fontawesome.com/a81368914c.js"></script>
</head>
<body>
	<img class="wave" src="login\w4.jpg">
	<div class="container">
		<div class="img">
			<img src="login\team.svg">
		</div>
		<div class="login-container">
			<form action="TeacherHome.jsp">
				<img class="avatar" src="login\profilepic.svg">
				<h2>Welcome</h2>
				<div class="input-div one ">
					<div class="i">
						<i class="fas fa-user"></i>
					</div>
					<div>
						<h5>Username</h5>
						<input class="input" type="text" name="username">
					</div>
				</div>
				<div class="input-div two">
					<div class="i">
						<i class="fas fa-lock"></i>
					</div>
					<div>
						<h5>Password</h5>
						<input class="input" type="password" name="password">
					</div>
				</div>
				<a href="#">Forgot Password</a> 
				
				<a href=""><input type="submit" class="btn" value="Login"></a>
				<br>
				<a href="TeacherRegister.jsp"><input type="submit" class="btn" value="AddNewteacher.jsp"></a>
				
			</form>
			<a href="home.html"><input type="submit" class="btn" value="back"></a>
		</div>
	</div>
	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>