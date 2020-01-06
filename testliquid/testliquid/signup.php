<!DOCTYPE html>
<html>
<head>
	<title>Signup Page</title>
	<link rel="stylesheet" type="text/css" href="css/stylechamodh.css">
	
</head>
<body>
	
	<div class="signup">
		<center>
			<form class="signup-form" action="dbf/signup.dbf.php" method="POST" name="signup-form">
				<table width="600px">
			<tr>
				<td>
					<h1>Sign Up</h1>
			<h3>Please fill in this form to create an account.</h3>
			<?php
					if(isset($_GET['error'])){
						if($_GET['error']=="emptyfields"){
							echo'<p class="signuperr">You must fill all the fields!</p>';
						}
						if($_GET['error']=="invalidmailuid"){
							echo'<p class="signuperr">Enter a valid username(no symbols beside _ and $) and a valid e-mail!</p>';
						}
						if($_GET['error']=="inavalidmail"){
							echo'<p class="signuperr">You must enter a valid e-mail!</p>';
						}
						if($_GET['error']=="inavaliduid"){
							echo'<p class="signuperr">Enter a valid username(no symbols beside _ and $)!</p>';
						}
						if($_GET['error']=="passwordcheck"){
							echo'<p class="signuperr">Retype the same password!</p>';
						}
						if($_GET['error']=="usertaken"){
							echo'<p class="signuperr">This username has already taken before!</p>';
						}
						
					}
					?>
			<hr>
		</td>
	</tr>
                       <tr>
				<td>
					<label for="uid"><b>User Id:</b></label>
			        <input type="text" name="uid" placeholder="Enter a User ID" value="<?php if(isset($_GET['uid'])){ echo $_GET['uid'];}?>" >
		</td>
	</tr>

			<tr>
				<td>
					<label for="email"><b>Email:</b></label>
			        <input type="email" name="email" placeholder="Enter your Email" value="<?php if(isset($_GET['email'])){ echo $_GET['email'];}?>" >
		</td>
	</tr>

			<tr>
				<td>
					<label for="pw"><b>Password:</b></label>
			        <input type="password" name="pw" placeholder="Enter password" >
		</td>
	</tr>

			<tr>
				<td>
					<label for="re-pw"><b>Re-Type Password:</b></label>
			        <input type="password" name="re-pw" placeholder="Re-Enter your password">
		</td>
	</tr>

			<tr>
				<td>
					<label><b>Address:</b></label>
			        <input type="text" name="address" placeholder="Address...." value="<?php if(isset($_GET['address'])){ echo $_GET['address'];}?>" >
			       

		</td>
	</tr>

			<tr>
				<td>
					<p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
				</td>
			</tr>

			<tr>
				<td>
					<button class="crtbtn" type="submit" onclick="myFunction()" name="createbtn"><b>Create</b></button>
			        <button  class="cancelbtn" name="cancelbtn"><b>Cancel</b></button>
		</td>
	</tr>
			
			<tr>
				<td>
					<p class="message" align="center">Already Registered? <a href="#">Login</a></p>
				</td>
			</tr>
		</table>
		</form>
	</center>
		
	</div>



</body>
</html>