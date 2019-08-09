<%@page import="com.doncar.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@page import="com.doncar.biz.MemberBiz"%>
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
<title>회원 전체보기</title>
<%@include file="./include/paging.jsp" %>
<style type="text/css">

#adminmemberlist{
	padding-left: 150px;
	padding-top: 25px;
	padding-bottom: 50px;
}

</style>
</head>

<body>
<%@ include file="./include/header.jsp" %>
<div id="adminmemberlist">
	<h3>
		<img src="image\admin2.jfif" style="width:50px; height:50px;"/>	
		맴버리스트
	</h3>

			<table border="1">
				<col width="50"/>
				<col width="100"/>
				<col width="100"/>
				<col width="100"/>
				<col width="100"/>
				<col width="100"/>
				<col width="100"/>
				<col width="100"/>
				<col width="100"/>
				<col width="100"/>
				<col width="100"/>
				<col width="100"/>
				<col width="100"/>
				<col width="100"/>

				<tr>
					<th>번호</th>
					<th>아이디</th>
					<th>이름</th>
					<th>닉네임</th>
					<th>성별</th>
					<th>생일</th>
					<th>주소</th>
					<th>보유머니</th>
					<th>이메일</th>
					<th>연락처</th>
					<th>권한</th>
					<th>면허증인증</th>
					<th>탈퇴여부</th>
					<th>가입일</th>
				</tr>
				<c:choose>
				<c:when test="${empty member_selectlist }">
					<tr>
						<td colspan="14">		====================가입 된 회원정보가 없습니다====================
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach items="${member_selectlist }" var="MemberDto">
						<tr>
							<td>${MemberDto.member_no }</td>
							<td>
								<c:choose>
									<c:when test="${MemberDto.member_delflag eq 'Y' }">
										<c:out value="/////////탈퇴한 회원입니다/////////"></c:out>
									</c:when>
									<c:otherwise>
										${MemberDto.member_id }									
									</c:otherwise>
								</c:choose>
							</td>
							<td>
								<c:choose>
									<c:when test="${MemberDto.member_delflag eq 'Y' }">
										<c:out value="/////////탈퇴한 회원입니다/////////"></c:out>
									</c:when>
									<c:otherwise>
										${MemberDto.member_name }								
									</c:otherwise>
								</c:choose>
							</td>
							<td>
								<c:choose>
									<c:when test="${MemberDto.member_delflag eq 'Y' }">
										<c:out value="/////////탈퇴한 회원입니다/////////"></c:out>
									</c:when>
									<c:otherwise>
										${MemberDto.member_nickname }							
									</c:otherwise>
								</c:choose>
							</td>
							<td>
								<c:choose>
									<c:when test="${MemberDto.member_delflag eq 'Y' }">
										<c:out value="/////////탈퇴한 회원입니다/////////"></c:out>
									</c:when>
									<c:otherwise>
										${MemberDto.member_gender }								
									</c:otherwise>
								</c:choose>
							</td>
							<td>
								<c:choose>
									<c:when test="${MemberDto.member_delflag eq 'Y' }">
										<c:out value="/////////탈퇴한 회원입니다/////////"></c:out>
									</c:when>
									<c:otherwise>
										${MemberDto.member_birth }								
									</c:otherwise>
								</c:choose>
							</td>
							<td>
								<c:choose>
									<c:when test="${MemberDto.member_delflag eq 'Y' }">
										<c:out value="/////////탈퇴한 회원입니다/////////"></c:out>
									</c:when>
									<c:otherwise>
										${MemberDto.member_addr }								
									</c:otherwise>
								</c:choose>
							</td>
							<td>
								<c:choose>
									<c:when test="${MemberDto.member_delflag eq 'Y' }">
										<c:out value="/////////탈퇴한 회원입니다/////////"></c:out>
									</c:when>
									<c:otherwise>
										${MemberDto.member_money }								
									</c:otherwise>
								</c:choose>
							</td>
							<td>
								<c:choose>
									<c:when test="${MemberDto.member_delflag eq 'Y' }">
										<c:out value="/////////탈퇴한 회원입니다/////////"></c:out>
									</c:when>
									<c:otherwise>
										${MemberDto.member_email }								
									</c:otherwise>
								</c:choose>
							</td>
							<td>
								<c:choose>
									<c:when test="${MemberDto.member_delflag eq 'Y' }">
										<c:out value="/////////탈퇴한 회원입니다/////////"></c:out>
									</c:when>
									<c:otherwise>
										${MemberDto.member_phone }								
									</c:otherwise>
								</c:choose>
							</td>
							<td>
								<c:choose>
									<c:when test="${MemberDto.member_delflag eq 'Y' }">
										<c:out value="/////////탈퇴한 회원입니다/////////"></c:out>
									</c:when>
									<c:otherwise>
										${MemberDto.member_roll }								
									</c:otherwise>
								</c:choose>
							</td>
							<td>
								<c:choose>
									<c:when test="${MemberDto.member_delflag eq 'Y' }">
										<c:out value="/////////탈퇴한 회원입니다/////////"></c:out>
									</c:when>
									<c:otherwise>
										${MemberDto.member_driveacc }								
									</c:otherwise>
								</c:choose>
							</td>
							<td>
								<c:choose>
									<c:when test="${MemberDto.member_delflag eq 'Y' }">
										<c:out value="/////////탈퇴한 회원입니다/////////"></c:out>
									</c:when>
									<c:otherwise>
										${MemberDto.member_delflag }								
									</c:otherwise>
								</c:choose>
							</td>
							<td>
								<c:choose>
									<c:when test="${MemberDto.member_delflag eq 'Y' }">
										<c:out value="/////////탈퇴한 회원입니다/////////"></c:out>
									</c:when>
									<c:otherwise>
										${MemberDto.member_regdate }								
									</c:otherwise>
								</c:choose>
							</td>
						</tr>
					</c:forEach>
				</c:otherwise>
				</c:choose>
				<tr>
					<td colspan="14">
						<input type="button" value="메인" onclick="location.href='doncar.do?command=member_main'"/>
					</td> 
				</tr>
			</table>
</div>
<%@ include file="./include/footer.jsp" %>
</body>
</html>






