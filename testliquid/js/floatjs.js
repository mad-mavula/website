document.getElementsById('login').addEventListener('click', function(){
        var check=<?php echo json_encode($logged) ?>
if(check==1 ){document.querySelector('.float-bg').style.display='flex';}
	
});

document.querySelector('.exit').addEventListener('click', function(){
	document.querySelector('.float-bg').style.display='none';
});

