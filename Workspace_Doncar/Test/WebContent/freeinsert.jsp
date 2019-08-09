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
<title>자유게시판 글쓰기</title>
</head>
<body>
<%@ include file="./include/header.jsp" %>

	<form action="doncar.do" method="post">
	<input type="hidden" name="command" value="freeboard_insertres"/>
		<table border="1">
			<tr>
				<th>작성자</th>
				<td><input type="text" name="free_writer" readonly="readonly" value="${MemberDto.member_nickname }"/></td>
			</tr>
			<tr>
				<th>제   목</th>
				<td><input type="text" name="free_title"/></td>
			</tr>
			<tr>
				<th>내   용</th>
				<td><textarea id="summernote" name="free_content"></textarea></td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="완료"/>
					<input type="button" value="목록" onclick="location.href='doncar.do?command=freeboard_selectlist'"/>
				</td>
			</tr>
		</table>
	</form>
<%@ include file="./include/footer.jsp" %>	
<%@ include file="./js/summernote.html" %>

</body>
</html>