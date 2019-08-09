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
<title>RENTACC INSERT</title>
</head>
<body>
<%@ include file="./include/header.jsp" %>
	<form action="doncar.do" method="post">
	<input type="hidden" name="command" value="rentaccinsertres">
	<h1>RentAccInsert Page</h1>
	<table border="1">
	
		<tr>
			<th>게시판번호?</th>
			<td><input type="text" name="rentacc_board_no"> </td>
		</tr>
		<tr>
			<th>시작날짜</th>
			<td><input type="text" name="rentacc_start_date"> </td>
		</tr>
		<tr>
			<th>마지막날짜</th>
			<td><input type="text" name="rentacc_end_date"> </td>
		</tr>
		<tr>
			<th>남길말</th>
			<td><textarea rows="10" cols="60" name="rentacc_nickname"></textarea></td>
		</tr>	
		<tr>
			<td colspan="2">
				<input type="submit" value="확인">
				<input type="button" value="취소" onclick="location.href='doncar.do?command=rentacc_selectlist'">
			</td>
		</tr>
	</table>
	</form>
<%@ include file="./include/footer.jsp" %>	

</body>
</html>