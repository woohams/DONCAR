<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>
    <% response.setContentType("text/html;charset=UTF-8");%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function idChkConfirm(){
		var chk = document.getElementsByName("myid")[0].title;
		
		if(chk=="n"){
			alert("아이디 중복 체크를 해주세요");
			document.getElementsByName("myid")[0].focus();
		}
	}
	function idChk(){
		var doc = document.getElementsByName("myid")[0];
		
		if(doc.value.trim()=="" || doc.value==null){	/* doc의 벨류를 트림 해봤더니 아무것도 없거나 벨류가 아예 없거나 = 입력 안했다면 */
			alert("아이디를 입력 해주세요!");
		} else {
			open("logincontroller.jsp?command=idchk&id="+doc.value,"","width = 200, height = 200");
		}
	}
</script>

</head>
<body>
	
	<h1>회 원 가 입</h1>
	
	<form action="logincontroller.jsp" method="post">
		<input type="hidden" name="command" value="registres">
		
		<table border="1">
			<tr>
				<th>아이디</th>
				<td>
					<input type="text" name="myid" required="required" title="n">
					<!-- required = 로 값이 들어가야 한다 -->
					<!-- 필요 없는 속성(title) 만들어서 -->
					<input type="button" value="중복 체크" onclick="idChk();">
				</td>
			
			</tr>
			
			<tr>
				<th>비밀번호</th>
				<td><input type="text" name="mypw" required="required" onclick="idChkConfirm();"></td>
			</tr>
			
			<tr>
				<th>이름</th>
				<td><input type="text" name="myname"></td>
			</tr>
			
			<tr>
				<th>주소</th>
				<td><input type="text" name="myname"></td>
			</tr>
			
			<tr>
				<th>전화번호</th>
				<td><input type="text" name="myname"></td>
			</tr>
			
			<tr>
				<th>이메일</th>
				<td><input type="text" name="myname"></td>
			</tr>
			
			<tr>
				<td colspan="2">
					<input type="submit" value="가입">
					<input type="button" value="취소" onclick="location.href='index.jsp'">
				</td>
			</tr>
			
		</table>
		
	</form>
	
</body>
</html>