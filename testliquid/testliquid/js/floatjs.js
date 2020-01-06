document.getElementsByClassName('login').addEventListener('click', function(){
        var check=<?php echo json_encode($logged) ?>
	document.querySelector('.float-bg').style.display='flex';
});

document.querySelector('.exit').addEventListener('click', function(){
	document.querySelector('.float-bg').style.display='none';
});

function checklogin(){



if(check!=1){

}


}