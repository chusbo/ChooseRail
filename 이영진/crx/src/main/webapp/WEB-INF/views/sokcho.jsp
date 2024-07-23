<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
	<meta charset="UTF-8">
	<title>속초역</title>
	<style>
		.container {
			margin:auto;
			width: 1200px;
		}
		.header {
		    background-color: rgb(226, 240, 217);
		    text-align: center;
		}
		.CSMainImg {
			width: 1000px;
			height: 500px;
			background-image: url('../img/CSImg.jpg');
			background-size: cover;
		}
		.line {
			margin: 10px 0;
			width:50px;
			height: 50px;
			border-bottom: 5px solid rgb(84, 130, 53);
		}
		li::marker {
			color: rgb(84, 130, 53);			
		}
		hr {
			width: 1200px;
		}
		.row{
			width: 1200px;
		}
		.subMenu {
			width: 1200px;
		}
		.subMenu5 {
			background-color: rgb(84, 130, 53);
		}
		a {
			text-decoration: none;
			color: white;
		}
		.redFont {
			color: red;
		}
		.cal{
			width:1200px;
			height: 300px;
			background: red;
		}
		.hwacheonInfo{
			width:1200px;
			height: 400px;
			border: 1px solid green;
		}
		.dimg{
			float: left;
			background: green;
			width: 40%;
			height: 100%;
		}
		.detail{
			float: right;
			background: blue;
			width: 60%;
			height: 100%;
		}
	</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	
	<div class="container">
		<h1>속초역</h1>
		
		<hr>
		<div class="subMenu subtle bg-secondary text-center ps-2">
			<div class="row">
				<div class="subMenu1 col border border-white"><a href="hwacheon.do" class="fs-5">화천역</a></div>
				<div class="subMenu2 col border border-white"><a href="yanggu.do" class="fs-5">양구역</a></div>
				<div class="subMenu3 col border border-white"><a href="inje.do" class="fs-5">인제역</a></div>
				<div class="subMenu4 col border border-white"><a href="goseong.do" class="fs-5">고성역</a></div>
				<div class="subMenu5 col border border-white"><a href="sokcho.do" class="fs-5">속초역</a></div>
				<div class="subMenu6 col border border-white"><a href="yangyang.do" class="fs-5">양양역</a></div>
			 </div>
		</div>
		<div class="cal"></div>
		<div class="line"></div>
		<div>
			<h4>상세정보</h4>
			<div class="hwacheonInfo">
				<div class="dimg">
					이미지
				</div>
				<div class="detail">
					내용
				</div>
			</div>
		</div>		
	</div>
</body>
</html>