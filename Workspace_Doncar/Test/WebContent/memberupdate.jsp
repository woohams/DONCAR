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
<title>회원정보 수정</title>
<script src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">


</script>
<style type="text/css">
#memberupdate{
	padding-top: 30px;
	padding-left: 500px;
	padding-bottom: 30px;
}

</style>
</head>
<body>
<%@ include file="./include/header.jsp" %>
<div id="memberupdate">
	<h3>
		<img src="image\memberupdate.jfif" style="width:50px; height:50px;"/>	
		회원정보 수정
	</h3>
	<form action="doncar.do" method="post">
		<input type="hidden" name="command" value="member_updateres"/>
		<input type="hidden" name="member_no" value="${MemberDto.member_no }"/>
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
				<th>이름</th>
				<td>${MemberDto.member_name}</td>
			</tr>
			<tr>
				<th>닉네임</th>
				<td><input type="text" name="member_nickname" value="${MemberDto.member_nickname }"/></td>
			</tr>
			<tr>
				<th>성별</th>
				<td><input type="text" name="member_gender" value="${MemberDto.member_gender }" placeholder="남자면  M, 여자면 F로 입력해주세요."/></td>
			</tr>
			<tr>
				<th>생일</th>
				<td><input type="text" name="member_birth" value="${MemberDto.member_birth }"/></td>
			</tr>
			<tr>
				<th>주소</th>
				<td>
					<input type="text" name="member_addr" value="${MemberDto.member_addr }"/>
					<input type="button" value="도로명 주소찾기" onclick=""/>
				</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>
					<input type="text" name="member_email" value="${MemberDto.member_email }"/>
					<input type="button" value="인증번호 받기" onclick=""/><br/>
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					<input type="button" value="인증하기" onclick=""/>
				</td>
			</tr>
			<tr>
				<th>연락처</th>
				<td>
					<input type="text" name="member_phone" value="${MemberDto.member_phone }"/>
					<input type="button" value="인증번호 받기" onclick=""/><br/>
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					<input type="button" value="인증하기" onclick=""/>	
				</td>
			</tr>
			<tr>
				<th>권한</th>
				<td>${MemberDto.member_roll}</td>
			</tr>
			<tr>
				<th>면허 인증</th>
				<td>
					<input type="text" name="member_driveacc" value="${MemberDto.member_driveacc }"/>
					<input type="button" value="인증하기"/>
				</td>
			</tr>
			<tr>
				<th>가입일자</th>
				<td>${MemberDto.member_regdate}</td>
			</tr>
			<tr>
				<td colspan="10">
					<input type="submit" value="변경완료"/>
					<input type="button" value="메인" onclick="location.href='doncar.do?command=member_main'"/>
					<input type="button" value="비밀번호 변경" onclick="location.href='doncar.do?command=member_pwupdate&member_no=${MemberDto.member_no}'"/>
				</td>
			</tr>
		</table>
	
	</form>
</div>
<%@ include file="./include/footer.jsp" %>
</body>
</html>




