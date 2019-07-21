function answer06() {
	var u = document.getElementById("locationSelect").value;

	if (u == "naver") {
		window.open("https://www.naver.com", "", "");
	} else if (u == "google") {
		window.open("https://www.google.com", "", "");
	} else if (u == "w3schools"){
		window.open("https://www.w3schools.com", "", "");
	}
}