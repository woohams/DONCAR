<%@page import="com.doncar.dto.MemberDto"%>
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
<%
	MemberDto dto = (MemberDto)session.getAttribute("dto");
%>
<body>

	<h1>관리자 페이지</h1>
	<%=dto.getMember_id() %>님의 정보<br/>
	roll  : <%=dto.getMember_roll() %>
	<input type="button" value="내정보" onclick="location.href='doncar.do?command=member_selectone&member_no=${dto.member_no}'"/>
	<input type="button" value="회원정보" onclick="location.href='doncar.do?command=member_selectlist'">
	
</body>
</html>


