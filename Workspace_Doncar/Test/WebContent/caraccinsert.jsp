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
<title>Car Acc Insert</title>
<style type="text/css">
	table,th,td{
		border:1px solid black;
	}
</style>
</head>
<body>
<%@ include file="./include/header.jsp" %>

	<form action="doncar.do" method="get">
	<input type="hidden" name="command" value="caracc_insert">
	<table>
		<tr>
			<th>위도</th>
			<td><input type="text" name="caracc_xpoint"></td>
		</tr>
		<tr>
			<th>경도</th>
			<td><input type="text" name="caracc_ypoint"></td>
		</tr>
		<tr>
			<th>닉네임</th>
			<td><input type="text" name="caracc_nickname"></td>
		</tr>
		
		<tr>
			<th>코멘트</th>
			<td><input type="text" name="caracc_coment"></td>
		</tr>
		
		<tr>
			<td><input type="submit" value="작성"></td>
			<td><input type="button" value="목록" onclick="location.href='doncar.do?command=caracc_selectlist'"></td>
		</tr>
	</table>
	</form>
<%@ include file="./include/footer.jsp" %>	
</body>
</html>