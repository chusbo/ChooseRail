<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사이드메뉴</title>
	<style>
		.quickmenu {
		    position: fixed;
		    left: 35%;
		    top: 265px;
		    margin-left: 800px;
		    display: inline-block;
		    background: #fcfcfc;
		    border-radius: 10px;
		    width: 120px;
		    padding-bottom: 20px;
		    border: 1px solid #d5d5d5;
		}
		.quickfont {
		    display: inline-block;
		    width: 100%;
		    text-align: center;
		    padding-top: 20px;
		    color: #333;
		    text-decoration: none;
		    line-height: 1;
		}
		.sidemenu{
			font-size:0.9em;
			display:block;
		}
	</style>
</head>
<body>
	<div class="quickmenu">
			<a href="" class="quickfont">
				<img src="../img/sidemenu1.png" alt="reservation">
				<span class="sidemenu">예매하기</span>
			</a>
			<a href="" class="quickfont">
				<img src="../img/sidemenu1.png" alt="">
				<span class="sidemenu">예매관리</span>
			</a>
			<a href="" class="quickfont">
				<img src="../img/sidemenu1.png" alt="">
				<span class="sidemenu">고객센터</span>
			</a>
			<a href="" class="quickfont">
				<img src="../img/sidemenu1.png" alt="">
				<span class="sidemenu">1:1문의</span>
			</a>
		</div>
</body>
</html>