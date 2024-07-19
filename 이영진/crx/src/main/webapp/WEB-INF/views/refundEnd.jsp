<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<title>환불 완료</title>
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
	
</style>
</head>
<body>	 
<jsp:include page="header.jsp" />
<div class="all">
	<div class="maintitle">
		<h1>환불 완료</h1>
		<hr>
	</div>

	<!-- 설명 -->
	<div class="guide">
		<br>
		<h4 style="text-align: center;">승차권 환불이 완료되었습니다.</h4>
		<br>
	</div>
	

	<!-- 조회하기 버튼 -->
	<br>
	<div style="text-align: right;">
		<button type="button" class="btn btn-success" >목록</button>
	</div>
</div>
</body>
</html>