<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
    
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
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
<title>Insert title here</title>
<style type="text/css">
	table,th,td{
		border: 1px solid black;
	}
	#carpoolinsert{
		padding-left: 50px;
		padding-top: 25px;
		padding-bottom: 50px;
	}
</style>
</head>
<script type="text/javascript" src="./js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="./js/mapselect.js"></script>
<script type="text/javascript">

function popUp(){
	
	window.open("./map.jsp","","left=300px,top=300px,width=1000px,height=500px");
}


$(function(){
	$("#rent_price").change(function(){
		var rent_price = $("#rent_price").val();
	$("#rent_price_value").html(rent_price);
		
	})
	
	
});	
</script>
<body>

<%@ include file="./include/header.jsp" %>
<div id="carpoolinsert">
	<h3>
		<img src="image\car8.jpeg" style="width:50px; height:50px;"/>	
		카풀 게시글 등록
	</h3>
	<form action="doncar.do" method="post">
	<input type="hidden" name="command" value="carboard_insert">
	<table>
		<tr>
			<th>제목</th>
			<td><input type="text" name="car_board_title"></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><input type="text" name="car_board_writer" readonly="readonly" value="${MemberDto.member_nickname }"></td>
		</tr>
		<tr>
			<th>가격</th>
			<td>
			
				<input type="range" id="rent_price" name="car_board_price" min="0" step="10000" max="50000" >
				<span id="rent_price_value">0</span>원
			</td>
		</tr>
		<tr>
			<th>위치</th>
			<td>
				<input id="location" type="text" name="car_board_location" value="">
				<select id="cd_list">
					<option>시</option>
				</select> 
				<select id="addr_list">
					<option>군/구</option>
				</select>
			</td>
		</tr>
				<tr>
					<td>임시!x , y 좌표 받기 ! button만 살리고 inputtag는 hidden으로!</td>
					<td>
						<button type="button" onclick="popUp();">좌표설정!</button> 
						<input type="text" id="x" name="car_board_x_point">
						<input type="text" id="y" name="car_board_y_point">
					</td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea id="summernote" name="car_board_content"></textarea></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="글쓰기">
				<input type="button" value="목록" onclick="location.href='doncar.do?command=carboard_selectlist'">
			</td>
		</tr>
	</table>
	</form>
</div>
<%@ include file="./include/footer.jsp" %>	
<%@ include file="./js/summernote.html" %>
</body>
</html>