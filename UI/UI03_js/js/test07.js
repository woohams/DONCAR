function answer07(){
	var arr = new Array(1,4,2,3,11,32,27,5);
	arr.sort(compareNum);
	
	alert(arr);
	
}

function compareNum(a, b){
	return a-b;
}