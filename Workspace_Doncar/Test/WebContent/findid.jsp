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
<title>아이디 찾기</title>
<script type="text/javascript">




</script>
<style type="text/css">
#findid{
	padding-top: 30px;
	padding-left: 500px;
	padding-bottom: 30px;
}

</style>


</head>
<body>
<%@ include file="./include/header.jsp" %>
<div id="findid">
	<h3>
		<img src="image\findid.png" style="width:50px; height:50px;"/>	
		ID 찾기
	</h3>
	<form action="doncar.do" method="post">
		<input type="hidden" name="command" value="member_findid">
	
		<table border="1" class="table table-striped table-hover">
			<tr>
				<td colspan="3" align="center" bgcolor="skyblue">
					내 정보로 찾기
				</td>
			</tr>
			<tr>
				<td align="left"> 이름  : <input type="text" name="member_name" /></td>
			</tr>
			<tr>
				<td align="left"> 핸드폰 번호  : <input type="text" name="member_phone" placeholder="010-0000-0000 형태로 입력해 주세요."/></td>
			</tr>
			<tr>
				<td align="left"> 생일   : <input type="text" name="member_birth" placeholder="YYYY-MM-DD 형태로 입력해주세요."/></td>
			</tr>
			<tr>
				<td colspan="3">
					<input type="button" value="찾기" onclick="location.href='doncar.do?command=member_findid'"/>
					<input type="button" value="취소" onclick="location.href='login.jsp'"/>
				</td>
			</tr>
		</table>

	</form>
</div>
<%@ include file="./include/footer.jsp" %>
</body>
</html>









