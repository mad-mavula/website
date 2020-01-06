<?php
if(isset($_POST['createbtn'])){
	require 'dbc.dbf.php';
	
	$uid=$_POST['uid'];
	$mail=$_POST['email'];
	$pwd=$_POST['pw'];
	$repwd=$_POST['re-pw'];
	$add=$_POST['address'];
	
	if(empty($uid)||empty($mail)||empty($pwd)||empty($add)||empty($repwd))
	{
		header("Location: ../signup.php?error=emptyfields&uid=".$uid."&email=".$mail."&address=".$add);
		exit();
	}
        
	
	else if(!filter_var($mail,FILTER_VALIDATE_EMAIL)&&!preg_match("/[a-zA-Z0-9_]$/",$uid)){
		header("Location:../signup.php?error=invalidmailuid&address=".$add);
		exit();
	}   
	   
	else if(!filter_var($mail,FILTER_VALIDATE_EMAIL)){
		header("Location:../signup.php?error=inavalidmail&uid=".$uid."&address=".$add);
		exit();
	}
	   
	else if(!preg_match("/[a-zA-Z0-9_]$/",$uid)){
		header("Location:../signup.php?error=inavaliduid&email=".$mail."&address=".$add);
		exit();
	}	
	
	else if($pwd!=$repwd){
		header("Location:../signup.php?error=passwordcheck&uid=".$uid."&email=".$mail."&address=".$add);
		exit();
	}
			
	else{
		$sql="SELECT uid FROM user_details WHERE uid=?";
		$stmnt=mysqli_stmt_init($conn);
		if(!mysqli_stmt_prepare($stmnt,$sql)){
			header("Location:../signup.php?error=sqlerror");
		exit();
		}
		else{
			
			mysqli_stmt_bind_param($stmnt,"s",$uid);
			mysqli_stmt_execute($stmnt); 
			mysqli_stmt_store_result($stmnt);
			$results=mysqli_stmt_num_rows($stmnt);
			if($results>0){
				header("Location:../signup.php?error=usertaken&email=".$mail."&address=".$add);
				exit();
			}
			 else{
				 $sql="INSERT INTO user_details(uid,email,password,address) VALUES(?,?,?,?)";
					 $stmnt=mysqli_stmt_init($conn);
				 if(!mysqli_stmt_prepare($stmnt,$sql)){
			header("Location:../signup.php?error=sqlerror");
		            exit();
		             }
				 else{
					 $hashpwd=password_hash($pwd,PASSWORD_DEFAULT);
					 mysqli_stmt_bind_param($stmnt,"ssss",$uid,$mail,$hashpwd,$add);
			mysqli_stmt_execute($stmnt);
			   header("Location:../index.php");
		            exit();
				 }
			 }
			
			
			
		}
		
	}		
			
	mysqli_stmt_close($stmnt);
			mysqli_close($conn);

			
}
	
			else{
		header("Location:../signup.php");
		     }
?>