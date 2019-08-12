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
<title>Car Acc Insert</title>
<style type="text/css">
	table,th,td{
		border:1px solid black;
	}
</style>
</head>
<script type="text/javascript">
function popUp(){
	
	window.open("./map.jsp","","left=300px,top=300px,width=1000px,height=500px");
}

</script>
<body>
<%@ include file="./include/header.jsp" %>

	<form action="doncar.do" method="post">
	<input type="hidden" name="command" value="caracc_insert">
	<table>
		<tr>
			<th>카풀게시판번호</th>
			<td><input type="text" name="car_board_no" readonly="readonly" value="${param.seq }"></td>
		</tr>
		<tr>
			<td>임시!x , y 좌표 받기 ! button만 살리고 inputtag는 hidden으로!</td>
			<td>
				<input type="text" id="x" name="caracc_xpoint">
				<input type="text" id="y" name="caracc_ypoint">
				<button type="button" onclick="popUp();">좌표설정!</button> 
			</td>
		</tr>
		<tr>
			<th>닉네임</th>
			<td><input type="text" name="caracc_nickname" readonly="readonly" value="${MemberDto.member_nickname }"></td>
		</tr>
		
		<tr>
			<th>코멘트</th>
			<td><textarea rows="10" cols="10" name="caracc_coment"></textarea></td>
		</tr>
		
		<tr>
			<td colspan="2">
				<input type="submit" value="작성">
				<input type="button" value="취소" onclick="location.href='doncar.do?command=carboard_selectone&car_board_no=${param.seq}'">
			</td>
		</tr>
	</table>
	</form>
<%@ include file="./include/footer.jsp" %>	
</body>
</html>