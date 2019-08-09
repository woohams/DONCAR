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
<title>비밀번호 변경</title>

<script type="text/javascript" src="js/chk.js"></script>
<script type="text/javascript">


</script>
<style type="text/css">
#memberpwupdate{
	padding-top: 30px;
	padding-left: 500px;
	padding-bottom: 30px;
}


</style>
</head>
<body>
<%@ include file="./include/header.jsp" %>
<div id="memberpwupdate">
	<h3>
		<img src="image\pw.png" style="width:50px; height:50px;"/>	
		비밀번호 변경
	</h3>
	
	<form action="doncar.do" method="post">
		<input type="hidden" name="command" value="member_pwupdateres">
		<input type="hidden" name="member_no" value="${MemberDto.member_no }">
		<table border="1">
			<tr>
				<th>번호</th>
				<td>${MemberDto.member_no}</td>
			</tr>
			<tr>
				<th>아이디</th>
				<td>${MemberDto.member_id}</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="text" name="member_pw" placeholder="변경할 비밀번호를 입력해 주세요" required="required" style="width:200px;"/></td>
			</tr>
			<tr>
				<th>비밀번호 확인</th>
				<td>
					<input type="password" id="pwCk" placeholder="한번 더 입력해 주세요." required="required" style="width:200px;"/> 
					<input type="button" value="비밀번호 확인"  onclick="pwChk();" />
				</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>${MemberDto.member_name}</td>
			</tr>
			<tr>
				<th>닉네임</th>
				<td>${MemberDto.member_nickname}</td>
			</tr>
			<tr>
				<td colspan="5">
					<input type="submit" value="변경완료"/>
					<input type="button" value="메인" onclick="location.href='doncar.do?command=member_main'"/>
				</td>
			</tr>
		</table>
	</form>
</div>
<%@ include file="./include/footer.jsp" %>
</body>
</html>