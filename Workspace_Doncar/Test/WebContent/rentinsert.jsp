<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	response.setContentType("text/html; charset=UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"	rel="stylesheet">
<script type="text/javascript" src="./js/jquery-3.4.1.min.js"></script>

<title>RENT INSERT</title>

<style type="text/css">
#rentinsert {
	padding-left: 50px;
	padding-top: 25px;
	padding-bottom: 50px;
}
</style>
</head>
<script type="text/javascript">

function popUp(){
	
	window.open("./map.jsp","","left=300px,top=300px,width=1000px,height=500px");
}


$(function(){
	$("#rent_price").change(function(){
		var rent_price = $("#rent_price").val();
	$("#rent_price_value").html(rent_price);
		
	})
});	
</script>
<script type="text/javascript" src="./js/mapselect.js"></script>
<body>
	<%@ include file="./include/header.jsp"%>
	<div id="rentinsert">
		<h3>
			<img src="image\car5.jpeg" style="width: 50px; height: 50px;" /> 렌트카
			등록
		</h3>


		<form action="doncar.do" method="post">
			<input type="hidden" name="command" value="rentinsertres">
			<table border="1">
				<tr>
					<th>진행도</th>
					<td><input type="text" name="rent_process" value="대기"
						readonly="readonly"></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="rent_title"></td>
				</tr>
				<tr>
					<th>작성자</th>
					<td><input type="text" name="rent_writer"
						value="${MemberDto.member_nickname }" readonly="readonly"></td>
				</tr>
				<tr>
					<th>제조사</th>
					<td id="rent_company">
						<input type="radio" name="rent_company" value="KIA">KIA 
						<input type="radio" name="rent_company" value="SSANGYONG">SSANGYONG 
						<input type="radio" name="rent_company" value="CHEVORLET">CHEVORLET 
						<input type="radio" name="rent_company" value="HYUNDAI">HYUNDAI 
						<input type="radio" name="rent_company" value="SAMSUNG">SAMSUNG
					</td>
				</tr>

				<tr>
					<th>크 기</th>
					<td id="rent_size">
					 	<input type="radio" name="rent_size"  value="경차">경차 
						<input type="radio" name="rent_size"  value="소형">소형
						 <input type="radio" name="rent_size" value="준중형">준중형
						 <input type="radio" name="rent_size" value="중형">중형 
						<input type="radio" name="rent_size"  value="준대형">준대형 
						<input type="radio" name="rent_size"  value="대형">대형 
						<input type="radio" name="rent_size"  value="SUV">SUV
					</td>
				</tr>

				<tr>
					<th>연 료</th>
					<td id="rent_fuel">
						<input type="radio" name="rent_fuel"  value="경유">경유
						 <input type="radio" name="rent_fuel" value="휘발유">휘발유
						 <input type="radio" name="rent_fuel" value="하이브리드">하이브리드
					</td>
				</tr>

				<tr>
					<th>가 격</th>
					<td>
						<input type="range" id="rent_price" name="rent_price" min="0" step="10000" max="50000">
						<span id="rent_price_value">0</span>원</td>
				</tr>
				<tr>
					<th>지역</th>
					<td>
					<input id="location" type="text" name="rent_location" value=""> 
						<select id="cd_list">
							<option value="">시</option>
						</select> 
						<select id="addr_list">
							<option>군/구</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>차량이미지</th>
					<td><input type="text" name="rent_img" value="">
						<button id="imageUpload">대표이미지 업로드(미구현)</button></td>
				</tr>
				<tr>
					<th>차량이름</th>
					<td><input type="text" name="rent_carname" value=""></td>
				</tr>
				<tr>
					<td>차번호</td>
					<td><input type="text" name="rent_carno"></td>
				</tr>
				<tr>
					<td>임시!x , y 좌표 받기 ! button만 살리고 inputtag는 hidden으로!</td>
					<td>
						<button type="button" onclick="popUp();">좌표설정!</button> 
						<input type="text" id="x" name="rent_x_point">
						<input type="text" id="y" name="rent_y_point">
					</td>
				</tr>
				<tr>
					<th>내용</th>
					<td>
						<textarea id="summernote" name="rent_content"></textarea>
					</td>
				</tr>

				<tr>
					<td colspan="2"><input type="submit" value="확인"> 
					<input type="button" value="취소" 	onclick="location.href='doncar.do?command=rentboard_selectlist'">
					</td>
				</tr>
			</table>
		</form>
	</div>
	<%@ include file="./include/footer.jsp"%>
	<%@ include file="./js/summernote.html"%>
</body>
</html>