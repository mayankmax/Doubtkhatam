
<!DOCTYPE html>
<html>
<style>
	#login_form{
		width:350px;
		height:350px;
		position:relative;
		top:50px;
		margin: auto;
		padding: auto;
	}
</style>
</head>
<body>
<div class="container">
	<div id="login_form" class="well">
		<h2><center><span class="glyphicon glyphicon-lock"></span> Please Login</center></h2>
		<hr>
		<form method="POST" action="login.php">
		Username: <input type="text" name="username" class="form-control" required>
		<div style="height: 10px;"></div>		
		Password: <input type="password" name="password" class="form-control" required> 
		<div style="height: 10px;"></div>
		<button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-log-in"></span> Login</button> No account? <a href="signup.php"> Sign up</a>
		</form>
		<div style="height: 15px;"></div>
		<div style="color: red; font-size: 15px;">
            
        </body>
        </head>
        </html>
    