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
<title>비밀번호 찾기</title>
<style type="text/css">
#findpw{
	padding-top: 30px;
	padding-left: 500px;
	padding-bottom: 30px;
}

</style>
</head>
<body>
<%@ include file="./include/header.jsp" %>
<div id="findpw">
	<h3>
		<img src="image\findpw.jpg" style="width:50px; height:50px;"/>	
		비밀번호 찾기
	</h3>
	
	
</div>
<%@ include file="./include/footer.jsp" %>
</body>
</html>




