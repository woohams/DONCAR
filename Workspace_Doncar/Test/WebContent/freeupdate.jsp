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

<title>자유게시판 수정하기</title>

</head>
<body>
<%@ include file="./include/header.jsp" %>

	<form action="doncar.do" method="post">
		<input type="hidden" name="command" value="freeboard_updateres"/>
		<input type="hidden" name="free_board_no" value="${dto.free_board_no }"/>
		<table border="1" class="table table-striped table-hover">
		<thead>
			<tr>
				<th>작성자</th>
				<td>${dto.free_writer }</td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="free_title" value="${dto.free_title }"/></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea id="summernote" rows="10" cols="60" name="free_content">${dto.free_content }</textarea></td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td colspan="2">
					<input type="submit" class="btn btn-default pull-right" value="수정하기"/>
					<input type="button" class="btn btn-default pull-right" value="목록" onclick="location.href='doncar.do?command=freeboard_selectlist'"/>
				</td>
			</tr>
		</tbody>
		</table>
	</form>
<%@ include file="./include/footer.jsp" %>	
<%@ include file="./js/summernote.html" %>
</body>
</html>