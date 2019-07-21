function answer09(){
	var tr = document.createElement("tr");
	document.getElementById("createTable").appendChild(tr);
	

		var th1 = document.createElement("th");
		th1.textContent=document.getElementsByName("name")[0];
		tr.appendChild(th1);
		var th2 = document.createElement("th");
		th2.textContent=document.getElementsByName("age")[0];
		tr.appendChild(th2);	
		var th3 = document.createElement("th");
		th3.textContent=document.getElementsByName("gender")[0];
		tr.appendChild(th3);	
	
	
}