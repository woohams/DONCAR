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
<script type="text/javascript" src="./js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

		
	function nicknameChk(){
		var doc = document.getElementsByName("member_nickname")[0];
		if(doc.value.trim() == "" || doc.value == null){
			alert("닉네임을 입력 해주세요!!");
		}else{
			open("doncar.do?command=member_nicknamechk&nickname"+doc.value,"","width=200 height=200");
		}
	}
		

	function nicknameChkConfirm() {
		var chk = document.getElementsByName("member_nickname")[0].title;
		if (chk == "n") {
			alert("닉네임 중복 체크를 해주세요.");
			document.getElementsByName("member_nickname")[0].focus();
		}
	}

	$(function() {

		alert("회원 가입 하세요");

		$("#kakaoSubmit").click(function() {
			$("#kakaoForm").submit();
		});
	});
</script>
</head>
<body>
<%@ include file="./include/header.jsp" %>

	<h1>회 원 가 입</h1>

	<form action="doncar.do" method="post" id="kakaoForm">
		<input type="hidden" name="command" value="member_regist" />
		<input type="hidden" name="member_id" id="member_id" title="n" value="${member_id }"/>
		<input type="hidden" name="member_pw" id="member_pw" value="${member_id }" />

		<table border="1">
			<tr>
				<th>닉네임</th>
				<td>
					<input type="text" name="member_nickname" required="required" title="n" value="${member_nickname }"/> 
					<input type="button" value="중복 체크" onclick="nicknameChk();nicknameChkConfirm();" />
				</td>
			</tr>

			<tr>
				<th>이름</th>
				<td>
					<input type="text" name="member_name" required="required" onclick="" />
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" id="kakaoSubmit" value="가입"/> 
					<input type="button" value="취소" onclick="location.href='index.jsp'" /> 
				</td>
			</tr>

		</table>

	</form>





<%@ include file="./include/footer.jsp" %>
</body>
</html>