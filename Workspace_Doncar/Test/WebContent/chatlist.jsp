<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<%@ include file="./include/header.jsp" %>
<table border="1">
	<tr>
		<th>채팅번호</th>
		<th>해당글 제목</th>
		<th>생성일</th>
	</tr>
</table>



<%@ include file="./include/footer.jsp" %>	
</body>
</html>