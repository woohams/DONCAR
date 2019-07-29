<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<% response.setContentType("text/html; charset=UTF-8"); %>    
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

	$(function(){
		if(request.getSession() != null)
		$("#login").toggle();
	});


</script>
</head>
<body>
	<header>
		<div>
		
			DONCAR
			<nav>
				<ul>
					<li><a href="">공지사항</a></li>
					<li><a href="">차량등록</a></li>
					<li><a href="">렌트예약</a></li>
					<li><a href="doncar.do?command=member_selectone">마이페이지</a></li>
					<li><a href="">1:1채팅문의</a></li>
					<li><a href="">자유게시판</a></li>
					
				</ul>
			</nav>
			
			<a id="login" href="doncar.do?command=login">로그인</a>
		</div>
	</header>
</body>
</html>