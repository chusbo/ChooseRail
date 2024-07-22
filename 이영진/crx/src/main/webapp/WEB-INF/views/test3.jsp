<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<meta charset="UTF-8">
<title>결제</title>
<style>
	.all{
		width: 1200px;	
		margin: 0 auto; <!-- 중앙 정렬 -->
	}
	.tiline{
		display:inline;
		border: solid 1px green;
		border-radius: 8px;
		padding: 5px;
		color: green;
		margin: 5px;
	}
	.guide{
		width: 1200px;
		height: auto;
		background-color: #f8f8f8;
		margin: 2px;
		padding: 5px;
		font-size: 12px;
	}
	.guidep{
		margin-bottom: 3px;
	}
	.payment{
		text-align: center;
	}
	
	table, th, td {
	    border: 2px solid white;
	    border-collapse: collapse;
	}
	th, td {
	    background-color: #96D4D4;
	}
	.ta th{
		background-color: #96D4D4;
		width: 110px;
	}
	.ta td{
		background-color: #f9f9f9;
	}
	.taa th{
		background-color: #96D4D4;
		width: 100px;
	}
	.taa td{
		background-color: #f9f9f9;
	}
	.amount{
		width: 250px;
		height: 40px;
	}	
</style>
</head>
<body>
<jsp:include page="header.jsp" />	
<div class="all">	
	<div class="maintitle">
		<h1>결제</h1>
		<hr>
	</div>
		
	<br>
	<div style="text-align:center;">
		<img src= "../img/mark3.gif" style="width:500px">
	</div>
	
	<br>
	<div class="guide">
		<p class="guidep">결제방법은 신용카드, 실시간계좌이체, 가상계좌, 소액결제  4가지가 있습니다.</p>
		<p class="guidep">간편결제의 경우 신용카드 선택하시면 됩니다.</p>
	</div>
	
	<br>
	<div>
		<table class="amount">
			<thead class="ta">
				<th>결제 금액</th>
				<td id="pay">1000원</td>
			</thead>	
		</table>
	</div>
	
	<br>
	<ul class="nav nav-tabs" id="myTab" role="tablist">
	    <li class="nav-item" role="presentation">
	   		<button class="nav-link active" aria-controls="home-tab-pane" aria-selected="true">결제방법</button>
	    </li>
	    
	</ul>
	<div class="tab-content" id="myTabContent">
	    <div class="tab-pane fade show active" id="home-tab-pane" role="tabpanel" aria-labelledby="home-tab" tabindex="0">
		    <br>		
			
			
			<div class="form-check">
			    <input class="form-check-input" type="radio" name="payment" id="card" checked>
			    <label class="form-check-label" for="card">
			        신용카드
			    </label>
			</div>
			<div class="form-check">
			    <input class="form-check-input" type="radio" name="payment" id="trans">
			    <label class="form-check-label" for="trans">
			        실시간계좌이체
			    </label>
			</div>
			<div class="form-check">
			    <input class="form-check-input" type="radio" name="payment" id="vbank">
			    <label class="form-check-label" for="vbank">
			        가상계좌
			    </label>
			</div>
			<div class="form-check">
			    <input class="form-check-input" type="radio" name="payment" id="phone">
			    <label class="form-check-label" for="phone">
			        소액결제
			    </label>
			</div>

			
			
			
			<br>
			<div class="guide">
				<p class="guidep">내용내용내용내용내용내용내용내용내용내용내용내용</p>
				<p class="guidep">내용내용내용내용내용내용내용내용내용내용내용내용</p>
				<p class="guidep">내용내용내용내용내용내용내용내용내용내용내용내용</p>
			</div>
	    </div>
	    
	</div>
	
	<br>
	<div class="payment">
		
		<button class="btn_payment">결제하기</button>
		<button type="button" class="btn btn-success">돌아가기</button>
	</div>
	
</div>

<script>
	
	$(".btn_payment").click(function() {
	    // 라디오 버튼에서 선택된 결제 방법을 확인하는 함수
	    function checkSelectedPayment() {
	        var selectedMethod = $('input[name=payment]:checked').attr('id');
	        switch (selectedMethod) {
	            case 'card':
	                return 'card';
	            case 'trans':
	                return 'trans';
	            case 'vbank':
	                return 'vbank';
	            case 'phone':
	                return 'phone';
	            default:
	                return 'card'; // 선택되지 않았을 경우 기본값은 'card'로 설정 (이 경우는 발생하지 않도록 설계하는 것이 좋습니다)
	        }
	    }

	    IMP.init("imp10351001");
		
	    // 결제 요청
	    IMP.request_pay({
	        pg: 'html5_inicis',
	        merchant_uid: 'merchant_' + new Date().getTime(),
	        pay_method: checkSelectedPayment(), // 선택된 라디오 버튼에 따라 동적으로 결제 방법을 설정합니다
	        name: '주문명:결제테스트',
	        amount: 100,
	        buyer_email: 'iamport@siot.do',
	        buyer_name: '구매자이름',
	        buyer_tel: '010-1234-5678',
	        buyer_addr: '서울특별시 강남구 삼성동',
	        buyer_postcode: '123-456'
	    }, function(rsp) {
	        var result = '';
	        if (rsp.success) {
	            // 결제 성공 시 처리
	            var msg = '결제가 완료되었습니다.\n';
	            msg += '고유ID : ' + rsp.imp_uid + '\n';
	            msg += '상점 거래ID : ' + rsp.merchant_uid + '\n';
	            msg += '결제 금액 : ' + rsp.paid_amount + '\n';
	            msg += '카드 승인번호 : ' + rsp.apply_num + '\n';
	            result = '0';
	        } else {
	            // 결제 실패 시 처리
	            var msg = '결제에 실패하였습니다.\n';
	            msg += '에러내용 : ' + rsp.error_msg + '\n';
	            result = '1';
	        }

	        if (result == '0') {
	            // 성공 시 추가 처리 (예: 결제 완료 페이지로 이동)
	            console.log('결제 성공 처리');
	        } else {
	            // 실패 시 추가 처리
	            console.log('결제 실패 처리');
	        }

	        // 사용자에게 메시지 표시
	        alert(msg);
	    });
	});


</script>
</body>
</html>


