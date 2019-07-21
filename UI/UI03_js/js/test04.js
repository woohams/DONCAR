function answer04(check){
	
	var checkAll=document.getElementsByName("subject");
	for(var i=0; i<checkAll.length; i++){
		checkAll[i].checked = check;
	}
	
}