 
function quantplus(id){
 var x=document.getElementById(id).value;
	var y=parseInt(x)+1;
	document.getElementById(id).value=y;
}
function quantminus(id){
var x=document.getElementById(id).value;
	var y=parseInt(x)-1;
    if(y>=1){
	document.getElementById(id).value=y;
}
else
document.getElementById(id).value=1;
}
   