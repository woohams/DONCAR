<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("UTF-8");%>
<% response.setContentType("text/html; charset=UTF-8");%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<title>회원가입</title>

<script type="text/javascript">
	function idChkConfirm() {
		var chk = document.getElementsByName("member_id")[0].title;
		if (chk == "n") {
			alert("아이디 중복체크를 해주세요.");
			document.getElementsByName("member_id")[0].focus();
		}

	}
	function idChk() {
		var doc = document.getElementsByName("member_id")[0];
		if (doc.value.trim() == "" || doc.value == null) {
			alert("아이디를 입력해 주세요!");
		} else {
			open("doncar.do?command=member_idchk&id=" + doc.value, "",
					"width=200, height=200");
		}
	}

	function nicknameChkConfirm() {
		var chk = document.getElementsByName("member_nickname")[0].title;
		if (chk == "n") {
			alert("닉네임 중복체크를 해주세요.");
			document.getElementsByName("member_nickname")[0].focus();
		}

	}
	function nicknameChk() {
		var doc = document.getElementsByName("member_nickname")[0];
		if (doc.value.trim() == "" || doc.value == null) {
			alert("닉네임을 입력해 주세요!");
		} else {
			open("doncar.do?command=member_nicknamechk&nickname=" + doc.value,
					"", "width=200, height=200");
		}
	}

	function pwChk() {
		var pw = document.getElementById("member_pw").value;
		var pwCk = document.getElementById("pwCk").value;
		var id = document.getElementById("member_id").value;

		pw_passed = true;

		var pattern1 = /[0-9]/;
		var pattern2 = /[a-zA-Z]/;
		var pattern3 = /[~!@\#$%<>^&*]/; 	// 특수문자 제거
		var pw_msg = "입력하신 패스워드 사용이 가능합니다.";

		if (id.length == 0) {
			alert("아이디를 입력해주세요");
			return false;

		} else {

			// id 조건
		}

		if (pw.length == 0) {
			alert("비밀번호를 입력해주세요");
			return false;

		} else {
			if (pw != pwCk) {
				alert("비밀번호가 일치하지 않습니다.");
				return false;
			}
		}

		if (!pattern1.test(pw) || !pattern2.test(pw) || !pattern3.test(pw)
				|| pw.length<8||pw.length>50) {
			alert("영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.");
			return false;
		}

		if (pw.indexOf(id) > -1) {
			alert("비밀번호는 ID를 포함할 수 없습니다.");
			return false;
		}

		var SamePass_0 = 0;
		var SamePass_1 = 0; 
		var SamePass_2 = 0; 
		
		for (var i = 0; i < pw.length; i++) {
			var chr_pass_0;
			var chr_pass_1;
			var chr_pass_2;

			if (i >= 2) {
				chr_pass_0 = pw.charCodeAt(i - 2);
				chr_pass_1 = pw.charCodeAt(i - 1);
				chr_pass_2 = pw.charCodeAt(i);

				if ((chr_pass_0 == chr_pass_1) && (chr_pass_1 == chr_pass_2)) {
					SamePass_0++;
				}
				else {
					SamePass_0 = 0;
				}

				if (chr_pass_0 - chr_pass_1 == 1
						&& chr_pass_1 - chr_pass_2 == 1) {
					SamePass_1++;
				}

				else {
					SamePass_1 = 0;
				}

				if (chr_pass_0 - chr_pass_1 == -1
						&& chr_pass_1 - chr_pass_2 == -1) {
					SamePass_2++;
				}
				else {
					SamePass_2 = 0;
				}
			}

			if (SamePass_0 > 0) {
				alert("동일문자를 3자 이상 연속 입력할 수 없습니다.");
				pw_passed = false;
			}

			if (SamePass_1 > 0 || SamePass_2 > 0) {
				alert("영문, 숫자는 3자 이상 연속 입력할 수 없습니다.");
				pw_passed = false;
			}

			if (!pw_passed) {
				return false;
				break;
			}
				alert(pw_msg);
				break;
				
			
		}
		return true;	
		
	}

</script>
<style type="text/css">
#regist{
	padding-top: 30px;
	padding-left: 500px;
	padding-bottom: 30px;
}
h3 > img{
	width:50px;
	height:50px;
}
</style>
</head>
<body>
<%@ include file="./include/header.jsp" %>
<div id="regist">
	<h3>
		<img src="image\regist.jfif"/>	
		회 원 가 입
	</h3>

	<form action="doncar.do" method="post">
		<input type="hidden" name="command" value="member_regist" />

		<table border="1">
			<tr>
				<th>아이디</th>
				<td>	
					<input type="text" name="member_id" id="member_id"required="required" title="n" />
					<input type="button" value="중복 체크" onclick="idChk();" />
				</td>
			</tr>
			<tr>
				<th>닉네임</th>
				<td>
					<input type="text" name="member_nickname" required="required" title="n" /> 
					<input type="button" value="중복 체크" onclick="nicknameChk();idChkConfirm();" />
				</td>
			</tr>

			<tr>
				<th>이름</th>
				<td>
					<input type="text" name="member_name" required="required" onclick="idChkConfirm();nicknameChkConfirm();" />
				</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td>
					<input type="password" name="member_pw" id="member_pw" required="required" onclick="idChkConfirm();nicknameChkConfirm();" />
				</td>
			</tr>
			<tr>
				<th>비밀번호 확인</th>
				<td>
					<input type="password" id="pwCk" required="required" onclick="idChkConfirm();nicknameChkConfirm();" /> 
					<input type="button" value="비밀번호 확인" onclick="pwChk();" />
				</td>
			</tr>
			<tr>
				<th>e-mail</th>
				<td>
					<input type="email" onclick="" placeholder="마이페이지에서 인증"/>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="가입" /> 
					<input type="button" value="취소" onclick="location.href='index.jsp'" /> 
					<input type="reset" value="초기화" />
				</td>
			</tr>

		</table>

	</form>





</div>
<%@ include file="./include/footer.jsp" %>
</body>
</html>









