<%@page import="com.doncar.dto.CarBoardDto"%>
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
<title>Insert title here</title>
<style type="text/css">
	
	table,td,th{
	
		border: 1px solid black;
	}
	#carpoolone{
	
		padding-left: 430px;
		padding-top: 25px;
		padding-bottom: 50px;
	}
</style>
</head>
<body>
<%@ include file="./include/header.jsp" %>
<div id="carpoolone">
	<h3>
		<img src="image\car6.jpeg" style="width:50px; height:50px;"/>	
		카풀게시글 상세보기
	</h3>
	<table>
		<tr>
			<th>제목</th>
			<td>${dto.car_board_title }</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${dto.car_board_writer }</td>
		</tr>
		<tr>
			<th>진행도</th>
			<td>${dto.car_board_process }</td>
		</tr>
		<tr>
			<th>지역</th>
			<td>${dto.car_board_location }</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>${dto.car_board_content }</td>
		</tr>
		<tr>
			<td>
				<input type="button" value="답글" onclick="">
				<input type="button" value="수정" onclick="location.href='doncar.do?command=carboard_update&car_board_no=${dto.car_board_no }'">
				<input type="button" value="삭제" onclick="location.href='doncar.do?command=carboard_delete&car_board_no=${dto.car_board_no }'">
				<input type="button" value="목록" onclick="location.href='doncar.do?command=carboard_selectlist'">
			</td>
		</tr>
		
	</table>
	<%@ include file="./include/comment.jsp" %>
</div>
<%@ include file="./include/footer.jsp" %>	
</body>
</html>