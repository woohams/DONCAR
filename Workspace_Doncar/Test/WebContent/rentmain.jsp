<%@page import="com.doncar.dto.RentBoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<title>RENT MAIN</title>
<link href="./bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<style type="text/css">
#rentmain{
	padding-left: 150px;
	padding-top: 25px;
	padding-bottom: 50px;
}

</style>
</head>
<body>
<%@ include file="./include/header.jsp" %>
<% RentBoardDto RentDto = new RentBoardDto();
	RentDto.setRent_carname("아반떼");
	RentDto.setRent_size("준중형");
	RentDto.setRent_company("현대");
	RentDto.setRent_fuel("휘발유");
	RentDto.setRent_location("서울시 강남구");
 	request.getSession().setAttribute("RentDto", RentDto); 
%>
<div id="rentmain">
	<h3>
		<img src="image\car3.jpeg" style="width:50px; height:50px;"/>	
		렌트카 메인
	</h3>
		<button>임시 좌표,차량정보는 자동으로 받아집니다.</button>
		<a href="doncar.do?command=rentboard_selectlist">리스트로</a>
</div>
<%@ include file="./include/footer.jsp" %>			
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
     <script src="./bootstrap/dist/js/bootstrap.min.js"></script>

</body>
</html>