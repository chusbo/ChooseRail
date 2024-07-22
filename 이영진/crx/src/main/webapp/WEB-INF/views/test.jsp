<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

    <title>test</title>
    <style>
 
    </style>
</head>
<body>
<!--	가격 변동하는거 생각해서 만드는법-->
	<div>
		<table class="amount">
			<th>결제</th>
			<td id="pay">1000</td>
			
		</table>
		
	</div>
	
	<button class="btn_payment">버튼</button>
<script>
	$(".btn_payment").click(function() {
	  //class가 btn_payment인 태그를 선택했을 때 작동한다.
		
	  	IMP.init("imp10351001");
		
<!--		상품가격 넣는법-->
		var textBox = document.getElementById('pay').textContent;
		console.log(1); 
		
		
		console.log(textBox);
	  	//결제시 전달되는 정보
		IMP.request_pay({
				    pg : 'html5_inicis', 
				    merchant_uid : 'merchant_' + new Date().getTime(),
					pay_method: 'card',           // 결제방식: card(신용카드), trans(실시간계좌이체), vbank(가상계좌), phone(소액결제)
				    name : '주문명:결제테스트'/*상품명*/,
				    amount : textBox/*상품 가격*/, 
				    buyer_email : 'iamport@siot.do'/*구매자 이메일*/,
				    buyer_name : '구매자이름',
				    buyer_tel : '010-1234-5678'/*구매자 연락처*/,
				    buyer_addr : '서울특별시 강남구 삼성동'/*구매자 주소*/,
				    buyer_postcode : '123-456'/*구매자 우편번호*/
				}, function(rsp) {
					var result = '';
				    if ( rsp.success ) {
						
						console.log(1);
						
				        var msg = '결제가 완료되었습니다.';
				        msg += '고유ID : ' + rsp.imp_uid;
				        msg += '상점 거래ID : ' + rsp.merchant_uid;
				        msg += '결제 금액 : ' + rsp.paid_amount;
				        msg += '카드 승인번호 : ' + rsp.apply_num;
						// json 열차 
<!--						var test = '';-->
<!--						var egdjrsd = document.getQuer(.도착시간).value();-->
<!--						test += 'secretkey="fdgdffsdksld"'-->
<!--						test += 'tfee=' + egdjrsd-->
<!--						$.ajax({-->
<!--							type: 'post',-->
<!--							url: "https://apis.data.go.kr/1613000/TrainInfoService/getStrtpntAlocFndTrainInfoinGra?" + test,-->						
<!--						})-->
						
				        result ='0';
						
						console.log(msg);
				    } else {
						console.log(2);
				        var msg = '결제에 실패하였습니다.';
				        msg += '에러내용 : ' + rsp.error_msg;
				        result ='1';
				    }
				    if(result=='0') {
						console.log(3);
				    	//location.href= $.getContextPath()+"/Cart/Success";
				    }
				    alert(msg);
				});
			});
</script>
</body>
</html>
