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


<title>자유게시판 리스트</title>
<%@include file="./include/paging.jsp" %>
</head>
<body>
<%@ include file="./include/header.jsp" %>



	<h3>
		<img src="image\free1.jpg" style="width:50px; height:50px;"/>	
		자유게시판
	</h3>
	
	<table border="1" class="table table-striped table-hover">
		<col width="50px"/>	
		<col width="100px"/>
		<col width="300px"/>
		<col width="100px"/>
		<thead>
		<tr>
			<th>번   호</th>
			<th>작성자</th>
			<th>제   목</th>
			<th>작성일</th>
		</tr>
		</thead>
		<tbody>
		<c:choose>
			<c:when test="${empty list }">
				<tr>
					<td colspan="5">-----작성된 글이 존재하지 않습니다.-----</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach items="${list }" var="dto">
					<tr class="dto">
						<td>${dto.free_board_no }</td>
						<td>${dto.free_writer }</td>
						<td><a href="doncar.do?command=freeboard_selectone&free_board_no=${dto.free_board_no }">${dto.free_title }</a></td>
						<td>${dto.free_regdate }</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>	
		<tr>
			<td colspan="4">
				<input type="button"  class="btn btn-default pull-right" value="글쓰기" onclick="location.href='doncar.do?command=freeboard_insert'"/><span id="page"></span>
				<%@ include file="./include/searchform.jsp" %>
			</td>
		</tr>
		</tbody>
	</table>
<%@ include file="./include/footer.jsp" %>
</body>
</html>