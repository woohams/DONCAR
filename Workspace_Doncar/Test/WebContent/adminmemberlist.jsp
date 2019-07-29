<%@page import="com.doncar.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@page import="com.doncar.biz.MemberBiz"%>
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
<%
	MemberBiz biz = new MemberBiz();
	List<MemberDto> list = biz.selectList();
%>
<body>

	<h1>맴버리스트</h1>
		<form action="" method="post">
			<input type="hidden" name="command" value="member_selectlist"/>
			<table border="1">
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
					<th>면허증인증여부</th>
					<th>탈퇴여부</th>
					<th>가입일</th>
				</tr>
<%
		if(list.size()==0){
%>
				<tr>
					<td colspan="10">==========가입 된 회원정보가 없습니다==========
				</tr>
<%
		} else {
			for(int i = 0; i < list.size(); i ++){
%>		
				<tr>
					<td><%=list.get(i).getMember_no() %></td>
					<td><%=list.get(i).getMember_id() %></td>
					<td><%=list.get(i).getMember_name() %></td>
					<td><%=list.get(i).getMember_nickname() %></td>
					<td><%=list.get(i).getMember_gender() %></td>
					<td><%=list.get(i).getMember_birth() %></td>
					<td><%=list.get(i).getMember_addr() %></td>
					<td><%=list.get(i).getMember_money() %></td>
					<td><%=list.get(i).getMember_email() %></td>
					<td><%=list.get(i).getMember_phone() %></td>
					<td><%=list.get(i).getMember_roll() %></td>
					<td><%=list.get(i).getMember_driveacc() %></td>
					<td><%=list.get(i).getMember_delflag() %></td>
					<td><%=list.get(i).getMember_regdate() %></td>
				</tr>
<%
			}
		}
%>
			</table>
		
		</form>


</body>
</html>






