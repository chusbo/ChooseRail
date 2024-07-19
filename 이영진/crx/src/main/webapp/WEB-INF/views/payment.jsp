<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
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
		width: 300px;
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
		<p class="guidep">결제방법은 신용카드, 간편결제 2가지가 있습니다.</p>
		<p class="guidep">간편결제의 경우 브라우저의 팝업 차단을 허용하신 후 이용해 주시기 바랍니다.</p>
		
	</div>
	
	<br>
	<div>
		<table class="amount">
			<thead class="ta">
				<th>결제</th>
				<td>#</td>
			</thead>	
		</table>
	</div>
	
	<br>
	<ul class="nav nav-tabs" id="myTab" role="tablist">
	    <li class="nav-item" role="presentation">
	   		<button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home-tab-pane" type="button" role="tab" aria-controls="home-tab-pane" aria-selected="true">일반결제</button>
	    </li>
	    <li class="nav-item" role="presentation">
	    	<button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile-tab-pane" type="button" role="tab" aria-controls="profile-tab-pane" aria-selected="false">간편결제</button>
	    </li>
	</ul>
	<div class="tab-content" id="myTabContent">
	    <div class="tab-pane fade show active" id="home-tab-pane" role="tabpanel" aria-labelledby="home-tab" tabindex="0">
		    <br>
			<table class="table">
				<thead class="table-success">
					<tr class="taa">
						<th>카드종류</th>
						<td>#</td>
					</tr>
					<tr class="taa">
						<th>카드번호</th>
						<td>#</td>
					</tr>
					<tr class="taa">
						<th>유효기간</th>
						<td>#</td>
					</tr>
					<tr class="taa">
						<th>할부개월</th>
						<td>#</td>
					</tr>
					<tr class="taa">
						<th>비밀번호</th>
						<td>#</td>
					</tr>
				</thead>
			</table>
			
			<br>
			<div class="guide">
				<p class="guidep">내용내용내용내용내용내용내용내용내용내용내용내용</p>
				<p class="guidep">내용내용내용내용내용내용내용내용내용내용내용내용</p>
				<p class="guidep">내용내용내용내용내용내용내용내용내용내용내용내용</p>
			</div>
	    </div>
	    <div class="tab-pane fade" id="profile-tab-pane" role="tabpanel" aria-labelledby="profile-tab" tabindex="0">
			<br>
			<table class="amount">
				<thead class="ta">
					<th>간편결제 종류</th>
					<td>#</td>
				</thead>	
			</table>
			<br>
			<div class="guide">
				<strong class="guidep">간편결제 관련 안내사항</strong>
				<ul>
					<li class="guidep">휴대폰과 카드 명의자가 동일해야 결제가 가능하며, 결제금액 제한은 없습니다.</li>
					<li class="guidep">발권버튼을 누르시면 선택하신 간편결제 항목에 따른 결제 팝업창이 오픈됩니다.</li>
					<li class="guidep">해당 간편결제 팝업창에서 결제정보를 입력하시고 결제완료버튼을 누르시면 결제가 처리됩니다.</li>
				</ul>	
			</div>
			
			<br>
			<div class="guide">
				<strong class="guidep">인터넷 익스플로러(IE)에서 간편결제 후 'opener를 찾을 수 없습니다.'라는 메시지가 나오는 경우</strong>	
				<ul>
					<li class="guidep">[인터넷 옵션]>[보안]탭에서 [신뢰할 수 있는 사이트]로 이동합니다.</li>
					<li class="guidep">[사이트]버튼을 클릭한 후 '*.koko.com', '*.naver.com'을 추가한 다음 다시 시도해 주십시오.</li>				
				</ul>	
			</div>
		</div>
	</div>
	
	<br>
	<div class="payment">
		<button type="button" class="btn btn-success">결제하기</button>
		<button type="button" class="btn btn-success">되돌아가기</button>
	</div>
	
</div>
</body>
</html>