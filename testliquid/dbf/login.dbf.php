<?php

require 'dbc.dbf.php';

if(isset($_POST['loginbtn'])){
	$ud=$_POST['ud'];
	$pw=$_POST['password'];
	
	if(empty($ud)||empty($pw)){
		header("Location:../index.php?error=emptyfields");
	exit();
		
	}
	else{
		$sql="SELECT * FROM user_details WHERE uid=? OR email=?;";
		$stmt=mysqli_stmt_init($conn);
		if(!mysqli_stmt_prepare($stmt,$sql)){
			
		}
		else{
			mysqli_stmt_bind_param($stmt,"ss",$ud,$ud);
			mysqli_stmt_execute($stmt);
			$result=mysqli_stmt_get_result($stmt);
			if($row=mysqli_fetch_assoc($stmt)){
				$pwdcheck=password_verify($pw,$row['password']);
				if($pwdcheck==false){
					header("Location:../index.php?error=passwordincorrect");
	                exit();
				} 
				else{
					session_start();
					$_SESSION['userid']=row['uid'];
					header("Location:../index.php?login=success");
	                exit();
				}
			}
		}
	}
	
	
}
else{
	header("Location:../index.php");
	exit();
}

?>