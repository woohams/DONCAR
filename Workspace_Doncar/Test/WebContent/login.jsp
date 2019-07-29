<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>login page</h1>
	
	<form action="doncar.do" method="get">
		<input type="hidden" name="command" value="login">
		아이디 : <input type="text" name="id"/>
		비밀번호 : <input type="password" name="pw"/>
		<input type="submit" value="로그인"/><br>
		<input type="button" value="회원가입" />
		
		
	</form>
</body>
</html>





