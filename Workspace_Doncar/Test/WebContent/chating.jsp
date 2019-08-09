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
</head>
<body>
<%@ include file="./include/header.jsp" %>
	<fieldset>
		<legend>임시채팅방</legend>
		<textarea id="messageWindow" rows="10" cols="50" readonly="readonly"></textarea>
		<br>
		<input type="text" id="inputMessage">
		<input type="submit" value="send" onclick="send();">
	</fieldset>
<%@ include file="./include/footer.jsp" %>	
</body>
</html>