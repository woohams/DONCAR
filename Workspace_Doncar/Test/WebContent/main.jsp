<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<% response.setContentType("text/html; charset=UTF-8"); %>    
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

<title>메인페이지</title>

<style type="text/css">
.btn{
	background-color: skyblue;
	color: white;
}
.carousel .item {
  height: 700px;
  left:100px;
  right:100px;
  background-color: #777;
}
.carousel-inner > .item > .item-link > img {
  position: absolute;
  top: 20;
  left:0;
  min-width: 100%;
  height: 700px;
}
.carousel {
  height: 700px;
  margin-bottom: 60px;
}

.jumbotron > div > img{
padding-left: 10%;
margin-left: 10%;
}
</style>

</head>
<body>

	<%@ include file="./include/header.jsp" %>
	<br><br>

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
	  <div class="carousel-inner" role="listbox">
        <div class="item active">
          <a class="item-link" href="doncar.do?command=rentboard_selectlist"><img src="./image/first.png" alt="First slide"></a>
        </div>
	    <div class="item">
          <a class="item-link" href="rentmain.jsp"><img src="./image/second.png" alt="Second slide"></a>
        </div>
	    <div class="item">
          <a class="item-link" href="carpoolmain.jsp"><img src="./image/three.png" alt="Third slide"></a>
        </div>
      </div>
	  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->

	<div class="container">
  	<div class="panel panel-default">
  		
    	<img src="./image/main_first.jpg" alt="Third slide">
  	</div>
	</div>
	
	<div class="jumbotron">
  		<div class="panel panel-default">
  	</div>
 		 <img src="./image/main_first.jpg" alt="Third slide">
		  <p>
		  	<a class="btn btn-primary btn-info" href="doncar.do?command=rentboard_selectlist" role="button">렌트 예약</a>
		  </p>
	</div>
	

	<div>
		<button onclick="location.href='doncar.do?command=rentboard_selectlist'" class="btn btn--rent">렌트 예약</button>
	</div>
	
	<div>
		<button onclick="rentmain.jsp" class="btn btn--car">차량 등록</button>
	</div>
	
	<div>
		<button onclick="carpoolmain.jsp" class="btn btn--carpool">카풀 에약</button>
	</div>

	<%@ include file="./include/footer.jsp" %>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="./bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>