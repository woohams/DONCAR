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
<title>공지사항 자세히보기</title>
</head>
<body>
<%@ include file="./include/header.jsp" %>
	<form action="doncar.do" method="post">
	<input type="hidden" name="comman" value="update"/>
	<input type="hidden" name="notice_no" value="${dto.notice_no }"/>
		<table border="1">
			<tr>
				<th>작성자</th>
				<td>${dto.notice_writer }</td>
			</tr>
			<tr>
				<th>제   목</th>
				<td>${dto.notice_title }</td>
			</tr>
			<tr>
				<th>내   용</th>
				<td>${dto.notice_content }</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" value="수정" onclick="location.href='doncar.do?command=noticeboard_update&notice_no=${dto.notice_no}'"/>
					<input type="button" value="삭제" onclick="location.href='doncar.do?command=noticeboard_delete&notice_no=${dto.notice_no}'"/>
					<input type="button" value="목록" onclick="location.href='doncar.do?command=noticeboard_selectlist'"/>
				</td>
			</tr>
		</table>
	</form>

</body>
</html>