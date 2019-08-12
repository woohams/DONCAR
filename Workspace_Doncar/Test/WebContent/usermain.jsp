<%@page import="com.doncar.dto.CarAccDto"%>
<%@page import="com.doncar.biz.CarAccBiz"%>
<%@page import="com.doncar.biz.RentAccBiz"%>
<%@page import="com.doncar.dto.RentAccDto"%>
<%@page import="com.doncar.dto.FreeBoardDto"%>
<%@page import="com.doncar.biz.FreeBoardBiz"%>
<%@page import="com.doncar.dto.CarBoardDto"%>
<%@page import="com.doncar.biz.CarBoardBiz"%>
<%@page import="com.doncar.dto.RentBoardDto"%>
<%@page import="java.util.List"%>
<%@page import="com.doncar.biz.RentBoardBiz"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8");%>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%

if(session.getAttribute("MemberDto")==null){
	response.sendRedirect("login.jsp");
}

String writer = ((MemberDto)session.getAttribute("MemberDto")).getMember_nickname();

RentBoardBiz rentbiz = new RentBoardBiz();
List<RentBoardDto> rentlist = rentbiz.myboard(writer);
pageContext.setAttribute("rentlist", rentlist);

CarBoardBiz carbiz = new CarBoardBiz();
List<CarBoardDto> carlist = carbiz.myboard(writer);
pageContext.setAttribute("carlist", carlist);

FreeBoardBiz freebiz = new FreeBoardBiz();
List<FreeBoardDto> freelist = freebiz.myboard(writer);
pageContext.setAttribute("freelist", freelist);

RentAccBiz rentaccbiz = new RentAccBiz();
List<RentAccDto> rentacclist = rentaccbiz.myacclist(writer);
pageContext.setAttribute("rentacclist", rentacclist);
rentacclist = rentaccbiz.selectwriter(writer);
pageContext.setAttribute("rentaccwriter", rentacclist);

CarAccBiz caraccbiz = new CarAccBiz();
List<CarAccDto> caracclist = caraccbiz.myacclist(writer);
pageContext.setAttribute("caracclist", caracclist);
caracclist = caraccbiz.selectwriter(writer);
pageContext.setAttribute("caraccwriter", caracclist);


%>
<body>
<%@ include file="./include/header.jsp" %>


<h5>렌트등록글</h5>
<table border="1">
	<tr>
		<th>글번호</th><th>제목</th><th>등록일</th>
	</tr>
	<c:choose>
		<c:when test="${empty rentlist}">
			<tr>
				<td colspan="3">-------------등록된글이 없습니다------------</td>
			</tr>
		</c:when>
		<c:otherwise>
			<c:forEach items="${rentlist }" var="dto">
				<tr>
					<td>${dto.rent_board_no }</td>
					<td><a href="doncar.do?command=rentboard_selectone&rent_board_no=${dto.rent_board_no }">${dto.rent_title }</a></td>
					<td>${dto.rent_regdate }</td>
				</tr>
			</c:forEach>
		</c:otherwise>
	</c:choose>
</table>

<h5>카풀등록글</h5>
<table border="1">
	<tr>
		<th>글번호</th><th>제목</th><th>등록일</th>
	</tr>
	<c:choose>
		<c:when test="${empty carlist}">
			<tr>
				<td colspan="3">-------------등록된글이 없습니다------------</td>
			</tr>
		</c:when>
		<c:otherwise>
			<c:forEach items="${carlist }" var="dto">
				<tr>
					<td>${dto.car_board_no }</td>
					<td><a href="doncar.do?command=carboard_selectone&car_board_no=${dto.car_board_no }">${dto.car_board_title }</a></td>
					<td>${dto.car_board_regdate }</td>
				</tr>
			</c:forEach>
		</c:otherwise>
	</c:choose>
</table>


<h5>렌트 신청 대기 내역</h5>
<table border="1">
	<tr>
		<th>글번호</th><th>진행도</th> <th>시작일</th> <th>종료일</th> <th>남긴말</th> <th>신청글바로가기</th> <th>요청처리</th>
	</tr>
	<c:choose>
		<c:when test="${empty rentacclist}">
			<tr>
				<td colspan="6">-------------등록된 신청이 없습니다------------</td>
			</tr>
		</c:when>
		<c:otherwise>
			<c:forEach items="${rentacclist }" var="dto">
				<tr>
					<td>${dto.rentacc_no }</td>
					<td>${dto.rentacc_process }</td>
					<td>${dto.rentacc_start_date }</td>
					<td>${dto.rentacc_end_date }</td>
					<td><a href="doncar.do?command=rentacc_selectone&rentacc_no=${dto.rentacc_no }">${dto.rentacc_comment }</a></td>
					<td><a href="doncar.do?command=rentboard_selectone&rent_board_no=${dto.rent_board_no }">임시클릭</a></td>
					<td>
						<c:if test="${dto.rentacc_process eq '대기' }">
								<button onclick="location.href='doncar.do?command=rentacc_updateacc&acc=Y&rentacc_no=${dto.rentacc_no}'">승인</button>
								<button onclick="location.href='doncar.do?command=rentacc_updateacc&acc=N&rentacc_no=${dto.rentacc_no}'">거절</button>
						</c:if>
						<c:if test="${dto.rentacc_process eq '결제대기' }">
							<button>계약서작성</button>
						</c:if>
					</td>
				</tr>
			</c:forEach>
		</c:otherwise>
	</c:choose>
</table>

<h5>카풀 신청 대기 내역</h5>
<table border="1">
	<tr>
		<th>글번호</th><th>진행도</th> <th>남긴말</th> <th>신청글바로가기</th> <th>요청처리</th>
	</tr>
	<c:choose>
		<c:when test="${empty caracclist}">
			<tr>
				<td colspan="4">-------------등록된 신청이 없습니다------------</td>
			</tr>
		</c:when>
		<c:otherwise>
			<c:forEach items="${caracclist }" var="dto">
				<tr>
					<td>${dto.caracc_no }</td>
					<td>${dto.caracc_process }</td>
					<td><a href="doncar.do?command=caracc_selectone&caracc_no=${dto.caracc_no }">${dto.caracc_coment }</a></td>
					<td><a href="doncar.do?command=carboard_selectone&car_board_no=${dto.car_board_no }">임시클릭</a></td>
					<td>
						<c:if test="${dto.caracc_process eq '대기' }">
							<button onclick="location.href='doncar.do?command=caracc_updateacc&acc=Y&caracc_no=${dto.caracc_no}'">승인</button>
							<button onclick="location.href='doncar.do?command=caracc_updateacc&acc=N&caracc_no=${dto.caracc_no}'">거절</button>
						</c:if>
						<c:if test="${dto.caracc_process eq '결제대기' }">
							<button>계약서작성</button>
						</c:if>
					</td>
				</tr>
				
			</c:forEach>
		</c:otherwise>
	</c:choose>
</table>

<h5>나의 렌트 신청목록</h5>
<table border="1">
	<tr>
		<th>글번호</th><th>진행도</th> <th>시작일</th> <th>종료일</th> <th>남긴말</th> <th>신청글바로가기</th> <th>비고</th>
	</tr>
	<c:choose>
		<c:when test="${empty rentaccwriter}">
			<tr>
				<td colspan="6">-------------등록된 신청이 없습니다------------</td>
			</tr>
		</c:when>
		<c:otherwise>
			<c:forEach items="${rentaccwriter }" var="dto">
				<tr>
					<td>${dto.rentacc_no }</td>
					<td>${dto.rentacc_process }</td>
					<td>${dto.rentacc_start_date }</td>
					<td>${dto.rentacc_end_date }</td>
					<td><a href="doncar.do?command=rentacc_selectone&rentacc_no=${dto.rentacc_no }">${dto.rentacc_comment }</a></td>
					<td><a href="doncar.do?command=rentboard_selectone&rent_board_no=${dto.rent_board_no }">임시클릭</a></td>
					<td>
						<c:if test="${dto.rentacc_process eq '결제대기' }">
							<button>계약서작성</button>
						</c:if>
					</td>
				</tr>
			</c:forEach>
		</c:otherwise>
	</c:choose>
</table>

<h5>나의 카풀 신청목록</h5>
<table border="1">
	<tr>
		<th>글번호</th><th>진행도</th> <th>남긴말</th> <th>신청글바로가기</th> <th>비고</th>
	</tr>
	<c:choose>
		<c:when test="${empty caraccwriter}">
			<tr>
				<td colspan="3">-------------등록된 신청이 없습니다------------</td>
			</tr>
		</c:when>
		<c:otherwise>
			<c:forEach items="${caraccwriter }" var="dto">
				<tr>
					<td>${dto.caracc_no }</td>
					<td>${dto.caracc_process }</td>
					<td><a href="doncar.do?command=caracc_selectone&caracc_no=${dto.caracc_no }">${dto.caracc_coment }</a></td>
					<td><a href="doncar.do?command=carboard_selectone&car_board_no=${dto.car_board_no }">임시클릭</a></td>
					<td>	
						<c:if test="${dto.caracc_process eq '결제대기' }">
							<button>결제</button>
						</c:if>
					</td>
				</tr>
			</c:forEach>
		</c:otherwise>
	</c:choose>
</table>

<h5>자유게시글</h5>

<table border="1">
	<tr>
		<th>글번호</th><th>제목</th><th>등록일</th>
	</tr>
	<c:choose>
		<c:when test="${empty freelist}">
			<tr>
				<td colspan="3">-------------등록된글이 없습니다------------</td>
			</tr>
		</c:when>
		<c:otherwise>
			<c:forEach items="${freelist }" var="dto">
				<tr>
					<td>${dto.free_board_no }</td>
					<td><a href="doncar.do?command=freeboard_selectone&free_board_no=${dto.free_board_no }">${dto.free_title }</a></td>
					<td>${dto.free_regdate }</td>
				</tr>
			</c:forEach>
		</c:otherwise>
	</c:choose>
</table>







<%@ include file="./include/footer.jsp" %>
</body>
</html>