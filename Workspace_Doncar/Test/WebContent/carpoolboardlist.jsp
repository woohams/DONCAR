<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
<title>Carpool 게시판 목록</title>
<%@include file="./include/paging.jsp" %>
<style type="text/css">

	table,th,td{
		border: 1px solid black;
	}
	
	#carpoolboardlist{
		padding-left: 430px;
		padding-top: 25px;
		padding-bottom: 50px;
	}
</style>
<script type="text/javascript">
		function popUp(){
			
			window.open("./calendar/calendar.jsp","","left=600px,top=600px,width=600px,height=300px");
		}
</script>
</head>
<body>
<%@ include file="./include/header.jsp" %>

	<fieldset>
	<legend>검색설정칸입니다.</legend>
	<table border="1">
		<tr>
			<th>시작일</th>
			<th>종료일</th>
		</tr>
		<tr>
			<td><input type="text" id="startdate" readonly="readonly" onclick="popUp();"></td>
			<td><input type="text" id="enddate" readonly="readonly" onclick="popUp();"></td>
		</tr>
	</table>
	</fieldset>
	
	<table>
		<col width="80">
		<col width="200">
		<col width="100">
		<col width="100">
		<col width="100">
		<col width="100">
		
		<tr>
			<th>글 번호</th>
			<th>제목</th>
			<th>진행도</th>
			<th>작성자</th>
			<th>지역</th>
			<th>작성 시간</th>
		</tr>
		
		<c:choose>
			<c:when test="${empty list }">
				<tr>
					<td colspan="6">작성된 글이 없습니다</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach items="${list }" var="dto">
					<tr class="dto">
						<td>${dto.car_board_no }</td>
						<td>
							<a href="doncar.do?command=carboard_selectone&car_board_no=${dto.car_board_no }">${dto.car_board_title }</a>
						</td>
						<td>${dto.car_board_process }</td>
						<td>${dto.car_board_writer }</td>
						<td>${dto.car_board_location }</td>
						<td>${dto.car_board_regdate }</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
		
		<tr>
			<td colspan="6">
				<input type="button" value="글 작성" onclick="location.href='doncar.do?command=carboard_regist'">
				<span id="page"></span>
				<%@ include file="./include/searchform.jsp" %> 
			</td>
		</tr>
		
	</table>
</div>
<%@ include file="./include/footer.jsp" %>	
</body>
</html>