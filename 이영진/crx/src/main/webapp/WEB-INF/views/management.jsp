<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<title>예매관리</title>
<style>
	.all{
		width: 1200px;
		margin: 0 auto;  <!-- 중앙 정렬 -->
	}
	.rt{
		margin: 3px;
	}	
	.search{
		text-align: center;
	}
	.minititle a{
		color: #000000;
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
	table, th, td {
	    border: 2px solid white;
	    border-collapse: collapse;
	}
	th, td {
	    background-color: #96D4D4;
	}
</style>
</head>
<body>	 
<jsp:include page="header.jsp" />
<div class="all">
	<div class="maintitle">
		<h1>예매관리</h1>
		<hr>
		</div>
		<br>  
		<!-- 소제목 -->
		<div>
			<br>
			<ul class="nav nav-tabs">
				<li class="minititle nav-item">
					<a class="nav-link active bg-light" aria-current="page" href="management.do">예매관리</a>
				</li>
				<li class="minititle nav-item">
					<a class="nav-link" href="usageDetails.do">이용내역</a>
				</li>
			</ul>
		</div>
		
		<!-- 설명 -->
		<div class="guide">
			<p class="guidep">'sessionId'고객님의 예약 및 발권내역은 아래와 같습니다.<br>
				출발시간 이전까지 예약한 승차권을 발권 받지 않은 경우 자동 예약 좌석에 자동으로 취소 되며,<br>
				위약금이 발생합니다.</p>
		</div>
		
		<!-- 테이블 -->
		<div>
			<table border="1" width ="1200" height="150" align = "center">
			    <tr align ="center">
				<p><td colspan = "7">승차권 예약 현황</td></p>
				<p><td colspan = "3">승차권 구매 현황</td></p>
			    </tr>
				    <tr align = "center">
						<td>승차일</td>
						<td>열차번호</td>
						<td>출발역</td>
						<td>도착역</td>
						<td>금액</td>
						<td>인원</td>
						<td>예약유형</td>
						<td>결제</td>
						<td>발권</td>
						<td>취소환불</td>									
				    </tr>
			    <tr>
					<tr align = "center">
						<td>#</td>
						<td>#</td>
						<td>#</td>
						<td>#</td>
						<td>#</td>
						<td>#</td>
						<td>#</td>
						<td>#</td>
						<td>#</td>
						<td><button type="button" class="btn btn-success">환불하기</button></td>											
					</tr>	
			    </tr>
			</table>
		</div>
		
		<br>
		<!-- 설명2 -->
		<div class="guide">
			<ul class="guidep">
				<li>결제 구입시한까지 결제(또는 구매)하지 않으면 자동으로 취소됩니다.</li>
				<li>역창구에서 승차권을 구입 시 본인을  확인할 수 있는 회원카드나 신분증을 제시해야 합니다.</li>
				<li>출발시간 이전까지 예약한 승차권을 발권받지 않는 경우 예약좌석이 자동으로 취소됩니다.</li>							
			</ul>
		</div>
				
	</div>  
</div>
</body>
</html>