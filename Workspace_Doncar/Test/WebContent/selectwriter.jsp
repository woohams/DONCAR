<%@page import="com.doncar.dto.RentBoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<title>자유게시판 모아보기</title>
</head>
<body>
<%@ include file="./include/header.jsp" %>
	<h1>자유게시판</h1>
	<table border="1">
		<col width="50px"/>	
		<col width="100px"/>
		<col width="300px"/>
		<col width="100px"/>
		
		<tr>
			<th>번   호</th>
			<th>제   목</th>
			<th>작성자</th>
			<th>작성일</th>
		</tr>
		
		<c:choose>
			<c:when test="${empty member_selectWrite }">
				<tr>
					<td colspan="5">============================== 작성된 글이 존재하지 않습니다 ==============================</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach items="${member_selectWrite }" var="FreeBoardDto">
					<tr>
						<td>${FreeBoardDto.free_board_no }</td>
						<td>${FreeBoardDto.free_writer }</td>
						<td>${FreeBoardDto.free_title }</td>
						<td>${FreeBoardDto.free_regdate }</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>	
	</table>
<%@ include file="./include/footer.jsp" %>
</body>
</html>