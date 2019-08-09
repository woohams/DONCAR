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
<title>결제</title>
<script type="text/javascript" src="./js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.2.js"></script>
<script type="text/javascript">


	$(function(){
		$(".check_module").click(function(){
		
				var IMP = window.IMP;
				IMP.init('imp93078974');
				IMP.request_pay({
				pg: 'html5_inicis', 
				pay_method: 'card',
				merchant_uid: 'merchant_'+new Date().getTime(),
				name: '주문명:결제테스트',
				amount: 999999,
				buyer_email: 'iamport@siot.do',
				buyer_name: '진우현',
				buyer_tel: '010-1234-5678',
				buyer_addr: '서울특별시 강남구 삼성동',
				buyer_postcode: '123-456',
				m_redirect_url: 'paymentres.jsp'
			
			}, function (rsp) {
				
				if (rsp.success) {
					var msg = '결제가 완료되었습니다.';
					msg += '\n고유ID : ' + rsp.imp_uid;
					msg += '상점 거래ID : ' + rsp.merchant_uid;
					msg += '결제 금액 : ' + rsp.paid_amount;
					msg += '카드 승인번호 : ' + rsp.apply_num;
					
					alert("매출전표	:"+rsp.receipt_url);
					alert("승인시간	:"+rsp.paid_at);
					alert("주문자 이름	:"+rsp.buyer_name);
					
					$("#imp_uid").val(rsp.imp_uid);
				
				
				
				
				} else {
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
				}
				alert(msg);
			});
		});
	});


	
	</script>
</head>
<body>
<%@ include file="./include/header.jsp" %>
	
	<input type="button" class="check_module" value="kkk">
		
		<input type="text" id="imp_uid">



<%@ include file="./include/footer.jsp" %>	
</body>
</html>