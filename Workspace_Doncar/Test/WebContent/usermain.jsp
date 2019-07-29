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
	<form action="member_selectone" method="post">
		<input type="hidden" name="command" value="member_selectone"/>
		<input type="hidden" name="member_no" value="${dto.member_no }"/>
		<h1>${dto.member_id }님의 정보</h1>
		<table border="1">
			<tr>
				<th>번호</th>
				<td>${dto.member_no }</td>
			</tr>
			<tr>
				<th>아이디</th>
				<td>${dto.member_id }</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>${dto.member_name }</td>
			</tr>
			<tr>
				<th>닉네임</th>
				<td>${dto.member_nickname }</td>
			</tr>
			<tr>
				<th>성별</th>
				<td>${dto.member_gender }</td>
			</tr>
			<tr>
				<th>보유머니</th>
				<td>${dto.member_money }</td>
			</tr>
			<tr>
				<th>생일</th>
				<td>${dto.member_birth }</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>${dto.member_email }</td>
			</tr>
			<tr>
				<th>연락쳐</th>
				<td>${dto.member_phone }</td>
			</tr>
			<tr>
				<th>권한</th>
				<td>${dto.member_roll }</td>
			</tr>	
			<tr>
				<th>면허인증여부</th>
				<td>${dto.member_driveacc }</td>
			</tr>
			<tr>
				<th>탈퇴여부</th>
				<td>${dto.member_delflag }</td>
			</tr>
			<tr>
				<th>가입일자</th>
				<td>${dto.member_regdate }</td>
			</tr>
		
		</table>
	
	</form>

</body>
</html>