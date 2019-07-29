<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<% response.setContentType("text/html; charset=UTF-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<%@ include file="./include/header.jsp" %>
	<div>
		<button>렌트 예약</button>
	</div>
	
	<div>
		<button>차량 등록</button>
	</div>
	
	<div>
		<button>카풀 에약</button>
	</div>

	<%@ include file="./include/footer.jsp" %>
</body>
</html>