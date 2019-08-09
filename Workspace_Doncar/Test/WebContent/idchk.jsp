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
<title>아이디 중복체크</title>

<script type="text/javascript">
	
	onload=function(){
		var id = opener.document.getElementsByName("member_id")[0].value;
		document.getElementsByName("id")[0].value=id;
		
	}
	
	function idConfirm(bool){	
		if(bool="true"){
			opener.document.getElementsByName("member_id")[0].title="y";
			opener.document.getElementsByName("member_nickname")[0].focus();
		} else {
			opener.document.getElementsByName("member_id")[0].focus();
		}
	
		self.close();	
	}
	

</script>
<style type="text/css">
	
.btn{
	background-color: skyblue;
	color: white;
	}


</style>

</head>
<%
	String idnotused = request.getParameter("idnotused");
%>
<body>

	<table border="1">
		<tr>
			<td><input type="text" name="id"></td>
		</tr>
		<tr>
			<td><%=idnotused.equals("true")?"id 생성 가능":"중복 된 아이디 존재" %> </td>
		</tr>
		<tr>
			<td>
				<input type="button" value="확인" onclick="idConfirm('<%=idnotused%>')" class="btn btn--check10" />	
			</td>		
	</table>

<body>

</body>
</html>




