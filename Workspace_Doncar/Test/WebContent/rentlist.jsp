<%@page import="com.doncar.biz.RentBoardBiz"%>
<%@page import="com.doncar.dto.RentBoardDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
	<% request.setCharacterEncoding("UTF-8");%>
	<% response.setContentType("text/html; charset=UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="./js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">


	
	$(function(){
		
		$("#rent_price").change(function(){
			var rent_price = $("#rent_price").val();
			$("#rent_price_value").html(rent_price);
		});
		
	});
	
	

</script>


<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<title>RENTLIST</title>
<%@include file="./include/paging.jsp" %>
<script type="text/javascript">
		function popUp(self){
			var id = $(self).prop('id');
			window.open("./calendar/calendar.jsp?id="+id,"","left=600px,top=600px,width=600px,height=300px");
		}
</script>

<style type="text/css">
#rentinsert{
	padding-left: 50px;
	padding-top: 25px;
	padding-bottom: 50px;
}

</style>
</head>
<body>
<%@ include file="./include/header.jsp" %>

<div id="rentinsert">
	<h3>
		<img src="image\car4.jpeg" style="width:50px; height:50px;"/>	
		렌트차량 목록
	</h3>
	<fieldset>
		<legend>검색설정칸입니다.</legend>
		<table border="1">
			<tr>
				<th>시작일</th>
				<th>종료일</th>	
			</tr>
		<tr>
			<td><input type="text" id="startdate" readonly="readonly" onclick="popUp(this);"></td>
			<td><input type="text" id="enddate" readonly="readonly" onclick="popUp(this);"></td>
		</tr>
	</table>
	</fieldset>
	<table border="1">
	<tr>
		<th>번호</th>
		<th>진행도</th>
		<th>제목</th>
		<th>작성자</th>
		<th>회사</th>
		<th>크기</th>
		<th>연료</th>
		<th>가격</th>
		<th>지역</th>
		<th>날짜</th>
		<th>이미지</th>
		<th>차량이름</th>
		<th>내용이미지</th>
	</tr>
	
	<c:choose>
	<c:when test="${empty list }">
		<tr>
			<td colspan="12">
				등록된 글이 없습니다.
			</td>
		</tr>
	</c:when>
	<c:otherwise>
		<c:forEach items="${list }" var="dto">
			<tr class="dto">
				<td>${dto.rent_board_no }</td>
				<td>${dto.rent_process }</td>
				<td><a href="doncar.do?command=rentboard_selectone&rent_board_no=${dto.rent_board_no }">${dto.rent_title }</a></td>
				<td>${dto.rent_writer }</td>
				<td>${dto.rent_company }</td>
				<td>${dto.rent_size }</td>
				<td>${dto.rent_fuel }</td>
				<td>${dto.rent_price }원</td>
				<td>${dto.rent_location }</td>
				<td>${dto.rent_regdate }</td>
				<td>${dto.rent_img }</td>
				<td>${dto.rent_carname }</td>
				<td>${dto.rent_content }</td>
			</tr>
		</c:forEach>
	</c:otherwise>
	</c:choose>
	<tr>
		<td colspan="13">
			<input type="button" value="글쓰기" onclick="location.href='doncar.do?command=rentboard_insert'">
			<span id="page"></span>
			<%@ include file="./include/searchform.jsp" %> 
			
		</td>
	</tr>
	<tr>
		<th>검색</th>
		<td colspan="12">
			<input type="text" size="50%" >
			<button onclick="location.href='doncar.do?command=rentboard_search'">검색</button>
		</td>
	</tr>
	
	</table>
</div>	
<%@ include file="./include/footer.jsp" %>	
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    
</body>
</html>