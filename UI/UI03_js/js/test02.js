function answer02(){
	var doc = document.getElementById("nameList");
    var val = document.getElementsByTagName('input')[1].value;
    var name = doc.innerHTML.split(' ');

    for (var i = 0; i<name.length; i++) {    
        if(name[i] === val)   {
            alert("이름이 있습니다.");
            return;
        }            
    }
    alert("이름이 없습니다.");	
}