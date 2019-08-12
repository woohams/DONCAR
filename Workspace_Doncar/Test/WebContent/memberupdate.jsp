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
<title>회원정보 수정</title>
<script src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
function goPopup(){

    var pop = window.open("jusopopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
 
}

function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn
						, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo, juso){

	document.form.roadAddrPart1.value = roadAddrPart1;
	document.form.roadAddrPart2.value = roadAddrPart2;
	document.form.addrDetail.value = addrDetail;
	document.form.zipNo.value = zipNo;
	var space = ", ";
	var juso = roadAddrPart1 + space + addrDetail + roadAddrPart2;
	document.form.juso.value = juso;
}


function nicknameConfirm(bool){	
	if(bool="true"){
		opener.document.getElementsByName("member_nickname")[0].title="y";
	}
	self.close();
}

function nicknameChk() {
	var doc = document.getElementsByName("member_nickname")[0];
	if (doc.value.trim() == "" || doc.value == null) {
		alert("닉네임을 입력해 주세요!");
	} else {
		open("doncar.do?command=member_nicknamechk&nickname=" + doc.value,
				"", "width=200, height=200");
	}
}

</script>

<style type="text/css">
#memberupdate {
	padding-top: 30px;
	padding-left: 100px;
	padding-bottom: 30px;
}
.btn {
	background-color: skyblue;
	color: white;
}

</style>
</head>

<body>
<%@ include file="./include/header.jsp" %>
<div id="memberupdate">
	<h3>
		<img src="image\memberupdate.jfif" style="width:50px; height:50px;"/>	
		회원정보 수정
	</h3>
	<form action="doncar.do" method="post" id="form" name="form">
		<input type="hidden" name="command" value="member_updateres"/>
		<input type="hidden" name="member_no" value="${MemberDto.member_no }"/>
		<table border="1" class="table table-striped table-hover">
			<thead>
			<tr>
				<th>번호</th>
				<td>${MemberDto.member_no}</td>
			</tr>
			<tr>
				<th>아이디</th>
				<td>${MemberDto.member_id}</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>${MemberDto.member_name}</td>
			</tr>
			<tr>
				<th>닉네임</th>
				<td>
					<input type="text" name="member_nickname" value="${MemberDto.member_nickname }" title="n"/>
					<input type="button" class="btn btn-default" value="중복 확인" onclick="nicknameChk();"/>	
				</td>
			</tr>
			<tr>
				<th>성별</th>
				<td><input type="text" name="member_gender" value="${MemberDto.member_gender }" placeholder="남자면  M, 여자면 F로 입력해주세요."/></td>
			</tr>
			<tr>
				<th>생일</th>
				<td><input type="text" name="member_birth" value="${MemberDto.member_birth }"/></td>
			</tr>
			<tr>
				<th>주소</th>
				<td>
					<table>
					
						<colgroup>
							<col style="width:20%"><col>
						</colgroup>
						<tbody>
							<tr>
							
								<th>우편번호</th>
							<td>
					   			<input type="hidden" id="confmKey" name="confmKey" value=""  >
								<input type="text" id="zipNo" name="zipNo" readonly style="width:100px">
								<input type="button"  class="btn btn-default" value="주소검색" onclick="goPopup();">
							</td>
							</tr>
							<tr>
								<th><label>도로명주소</label></th>
								<td><input type="text" id="roadAddrPart1" style="width:85%"></td>
							</tr>
							<tr>
								<th>상세주소</th>
							<td>
								<input type="text" id="addrDetail" style="width:40%" value="">
								<input type="text" id="roadAddrPart2"  style="width:40%" value="">
							</td>
							</tr>
						</tbody>
							<tr>
								<th>등록 주소</th>
								<td>
									<input type="text" name="member_addr" id="juso" value="" style="width:700px;" placeholder="${MemberDto.member_addr }" readonly="readonly"/>
								</td>
							</tr>
					</table>
					
				</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>
					<input type="text" name="member_email" value="${MemberDto.member_email }"/>
               		<input type="button" class="btn btn-default" value="인증번호 받기" onclick=""/>
               		<br/>
					<input type="text" name="" value="" placeholder="인증번호를 입력해주세요"/>
               		<input type="button" class="btn btn-default" value="인증하기" onclick=""/>
					
				</td>
			</tr>
			<tr>
				<th>연락처</th>
				<td>
					<input type="text" name="member_phone" value="${MemberDto.member_phone }"/>
					<input type="button" class="btn btn-default" value="인증번호 받기" onclick=""/>
					<br/>
					<input type="text" name="" value="" placeholder="인증번호를 입력해주세요"/>
					<input type="button" class="btn btn-default" value="인증하기" onclick=""/>	
				</td>
			</tr>
			<tr>
				<th>권한</th>
				<td>${MemberDto.member_roll}</td>
			</tr>
			<tr>
				<th>면허 인증</th>
				<td>
					<input type="text" name="member_driveacc" value="${MemberDto.member_driveacc }"/>
					<input type="button" class="btn btn-default"	 value="인증하기"/>
				</td>
			</tr>
			<tr>
				<th>가입일자</th>
				<td>${MemberDto.member_regdate}</td>
			</tr>
			<thead>
			<tbody>
			<tr>
				<td colspan="10">
					<input type="submit" class="btn btn-default pull-right"	 value="변경완료"/>
					<input type="button" class="btn btn-default pull-right"	 value="메인" onclick="location.href='doncar.do?command=member_main'"/>
					<input type="button" class="btn btn-default pull-right"	 value="비밀번호 변경" onclick="location.href='doncar.do?command=member_pwupdate&member_no=${MemberDto.member_no}'"/>
				</td>
			</tr>
			</tbody>
		</table>
	
	</form>
</div>
<%@ include file="./include/footer.jsp" %>
</body>
</html>




