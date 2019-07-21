function answer03(){

	var val = document.getElementsByName("rdo");

    if(val[0].checked){
        window.open("https://www.naver.com","","");
    }
    
    else if(val[1].checked){
        window.open("https://www.google.com","","");
        
    }
    else if(val[2].checked){
        window.open("https://www.w3schools.com","","");
    }
	
}