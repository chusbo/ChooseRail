<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<title>이용내역</title>
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
	 ud table, th{
		background-color: #2e7d32;
		width: 90px;
		height: 40px;
	}
	 ud table, td{
		background-color: #a5d6a7;
		height: 40px;
	}
	
</style>
</head>
<body>	 
<jsp:include page="header.jsp" />
<div class="all">
	<div class="maintitle">
		<h1>이용내역</h1>
		<hr>
	</div>
	<br>  
	<div>
		<br>
		<ul class="nav nav-tabs">
			<li class="minititle nav-item">
				<a class="nav-link" href="management.do">예매관리</a>
			</li>
			<li class="minititle nav-item">
				<a class="nav-link active bg-light" aria-current="page" href="usageDetails.do">이용내역</a>
			</li>
		</ul>
	</div>
	
	<!-- 설명 -->
	<div class="guide">
		<br>
		<h5 style="text-align: center;">'sessionId'고객님의 발권 및 환불 내역을 확인하실 수 있습니다.</h5>
		<br>
	</div>
	
	<!-- 테이블 -->
	<br>
	<table class="ud">		
		<th style="text-align: center;">승차 일자</th>
		<td>#########################################################</td>					
	</table>  
	
	<!-- 조회하기 버튼 -->
	<br><br><br>
	<div style="text-align: center;">
		<button type="button" class="btn btn-success" >조회하기</button>
	</div>
</div>
</body>
</html>