<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
	<% request.setCharacterEncoding("UTF-8");%>
	<% response.setContentType("text/html; charset=UTF-8"); %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	div{
	
		border : 1px solid black;
		width : 200px;
		height: 200px;
	
	}
</style>
</head>
<body>

	<div>
		
	</div>
	<form action="imgupload.jsp" method="post" enctype="multipart/form-data">
		파일 첨부 : <input type="file" name="file">
	</form>
	
</body>
</html>