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
<title>Insert title here</title>
<style type="text/css">

#carpoolmain{

	padding-left: 1500px;
	padding-top: 25px;
	padding-bottom: 50px;
}

</style>
</head>
<body>
<%@ include file="./include/header.jsp" %>
<div id="carpoolmain">
	<h3>
		<img src="image\car2.jpeg" style="width:50px; height:50px;"/>	
		카풀 메인
	</h3>
	<a href="doncar.do?command=carboard_selectlist">CarBoard</a>
	<a href="doncar.do?command=caracc_selectlist">CarAcc</a>
</div>	
<%@ include file="./include/footer.jsp" %>	
</body>
</html>