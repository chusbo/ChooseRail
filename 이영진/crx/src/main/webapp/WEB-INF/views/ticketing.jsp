<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>결제완료</title>
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
	.guide{
		width: 1200px;
		height: auto;
		background-color: #f8f8f8;
		margin: 2px;
		padding: 5px;
		font-size: 12px;
	}
	
</style>
</head>
<body>
<jsp:include page="header.jsp" />	
<div class="all">	
	<div class="maintitle">
		<h1>결제완료</h1>
		<hr>
	</div>
		
	<br>
	<div style="text-align:center;">
		<img src= "../img/mark4.gif" style="width:500px">
	</div>
	
	<br>
	<div class="guide">
		<br>
		<h4 style="text-align: center;">승차권 발권이 완료되었습니다.</h4>
		<br>
	</div>
	
	    <br>
			<table class="table">
				<thead class="table-success">
					<tr class="taa">
						<th>결제금액</th>
						<td>#</td>
					</tr>
					<tr class="taa">
						<th>카드번호</th>
						<td>#</td>
					</tr>
					<tr class="taa">
						<th>승인금액</th>
						<td>#</td>
					</tr>
					<tr class="taa">
						<th>승인일자</th>
						<td>#</td>
					</tr>
					<tr class="taa">
						<th>승인번호</th>
						<td>#</td>
					</tr>
				</thead>
			</table>
	
	<div class="payment">
		<button type="button" class="btn btn-success">발권내역조회</button>
	</div>
	
</div>
</body>
</html>