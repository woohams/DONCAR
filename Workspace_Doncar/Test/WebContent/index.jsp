<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<title>인덱스</title>
<style type="text/css">
#home {
background-image: url('image/index.jpg');
}
 
* {
padding: 0px;
margin: 0px;
}

button {
background-color: #AAAAAA;
}

body {
   position: fixed;
   overflow-y: scroll;
   width: 100%;
}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>

</head>
<body>
   <div id="home" style="height: 2060px;">
   <div style="height: 100%">
      <button type="button" class="btn btn-outline-secondary btn-lg" onclick="location.href='main.jsp'">시작하기</button>
      <button type="button" class="btn btn-outline-secondary btn-lg" onclick="location.href='login.jsp'">로그인</button>
   </div>
   </div>
   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>
