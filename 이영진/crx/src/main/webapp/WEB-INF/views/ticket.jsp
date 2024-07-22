<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<title>일반승차권 예매</title>
<style>
	.all{
		width: 1200px;
		margin: 0 auto;  <!-- 중앙 정렬 -->
	}
	.tiline{
		display:inline;
		border:solid 1px green;
		border-radius: 8px;
		padding: 5px;
		color: green;
		margin: 5px;
	}
	.mid{
		
		height: 350px;
		background: #f8f8f8;		
	}
	.relist{
		margin: 0 5 5 5px;
		padding: 5px;
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
	table, th, td {
	    border: 2px solid white;
	    border-collapse: collapse;
	}
	#Date{
		width:140px;
		display:inline;
	}
	#listDate{
		
	}

</style>
</head>
<body>	 
<jsp:include page="header.jsp" />
<div class="all">
	
	 <div class="maintitle">
	 	 <h1>일반승차권</h1>
	 	 <hr>
	 </div>
	
	 <br>
	 <div style="text-align:center;">
		 <img src= "../img/mark1.gif" style="width:500px">
	 </div>
	
	<br>
   
    <div>
	<br>
				<ul class="nav nav-tabs">
					<li class="minititle nav-item">
						<a class="nav-link active bg-light" aria-current="page" href="ticket.do">일반승차권 조회</a>
					</li>
					<li class="minititle nav-item">
						<a class="nav-link" href="groupTicket.do">단체승차권 조회</a>
					</li>
				</ul>
   </div>
   <div class="mid">
		<div>
			
			<div class="relist">
				
				<br>
				<div class= "rt">
					<label id="start">출발역</label>
					<input id="start" name="txtGoStart" type="text" class="inp200" value="대전" onchange="hideResult();" title="출발역" autocomplete="off" style="ime-mode:active">
					<a href="#"><img src="/images/btn_tra_sch.png" alt="조회"></a>
								
					&nbsp;&nbsp;&nbsp;
					<label id="end">도착역</label>
					<input id="end" name="txtGoStart" type="text" class="inp200" value="서울" onchange="hideResult();" title="출발역" autocomplete="off" style="ime-mode:active">
					<a href="#"><img src="/images/btn_tra_sch.png" alt="조회"></a>	
				</div>
				
				<br>			
				<div class= "rt">
					<label for="Date">출발일</label>
					<input type="date" id="Date" name="lostItemRegDate">		
					
					&nbsp;&nbsp;
					<label id="listtime">시간</label>
					<select style="border: 1px solid #black; padding: 5px; width: 65px; background: #fff;" name="listtime" id="listtime" class="ymd checkForm" onchange="changeWeekInfo();" option="{isMust :false, message : '출발시간을 선택하십시오.'}" title="출발시간 선택">
						<option value="08" selected="selected">
							08
						</option>
						<option value="10">
							10
						</option>
						<option value="12">
							12
						</option>
						<option value="14">
							14
						</option>
						<option value="16">
							16
						</option>
						<option value="18">
							18
						</option>
						<option value="20">
							20
						</option>
						<option value="22">
							22
						</option>
						<option value="24">
							24
						</option>													
					</select>
					<label id="listtime">시</label>	
				</div>			
				
				<br>
				<div class= "rt">
					<div>
						<label class= "listar" id="personnel">인원정보</label>
						<select style="border: 1px solid #black; padding: 5px; width: 200px; background: #fff;" name="personnel" id="personnel" class="ymd checkForm" onchange="changeWeekInfo();" option="{isMust :false, message : '인원을 선택해 주세요.'}" title="인원을 선택해 주세요">
							<option value="어른(만13세 이상) 2명">
								어른(만13세 이상) 0명
							</option>
							<option value="어른(만13세 이상) 1명" selected="selected">
								어른(만13세 이상) 1명
							</option>
							<option value="어른(만13세 이상) 2명">
								어른(만13세 이상) 2명
							</option>
							<option value="어른(만13세 이상) 3명">
								어른(만13세 이상) 3명
							</option>
							<option value="어른(만13세 이상) 4명">
								어른(만13세 이상) 4명
							</option>
							<option value="어른(만13세 이상) 5명">
								어른(만13세 이상) 5명
							</option>
							<option value="어른(만13세 이상) 6명">
								어른(만13세 이상) 6명
							</option>
							<option value="어른(만13세 이상) 7명">
								어른(만13세 이상) 7명
							</option>
							<option value="어른(만13세 이상) 8명">
								어른(만13세 이상) 8명
							</option>
							<option value="어른(만13세 이상) 9명">
								어른(만13세 이상) 9명
							</option>
							<option value="어른(만13세 이상) 10명">
								어른(만13세 이상) 10명
							</option>													
						</select>
						<label>명</label>
						
						&nbsp;&nbsp;
						<select style="border: 1px solid #black; padding: 5px; width: 200px; background: #fff;" name="child" id="child" class="ymd checkForm" onchange="changeWeekInfo();" option="{isMust :false, message : '인원을 선택해 주세요.'}" title="인원을 선택해 주세요">
							<option value="어린이(만 6~12세) 0명" selected="selected">
								어린이(만6~12세) 0명
							</option>
							<option value="어린이(만 6~12세) 1명">
								어린이(만 6~12세) 1명
							</option>
							<option value="어린이(만 6~12세) 2명">
								어린이(만 6~12세) 2명
							</option>
							<option value="어린이(만 6~12세) 3명">
								어린이(만 6~12세) 3명
							</option>
							<option value="어린이(만 6~12세) 4명">
								어린이(만 6~12세) 4명
							</option>
							<option value="어린이(만 6~12세) 5명">
								어린이(만 6~12세) 5명
							</option>
							<option value="어린이(만 6~12세) 6명">
								어린이(만 6~12세) 6명
							</option>
							<option value="어린이(만 6~12세) 7명">
								어린이(만 6~12세) 7명
							</option>
							<option value="어린이(만 6~12세) 8명">
								어린이(만 6~12세) 8명
							</option>
							<option value="어린이(만 6~12세) 9명">
								어린이(만 6~12세) 9명
							</option>
							<option value="어린이(만 6~12세) 10명">
								어린이(만 6~12세) 10명
							</option>													
					</select>
					<label>명</label>
					
					&nbsp;&nbsp;
					<select style="border: 1px solid #black; padding: 5px; width: 200px; background: #fff;" name="old" id="old" class="ymd checkForm" onchange="changeWeekInfo();" option="{isMust :false, message : '인원을 선택해 주세요.'}" title="인원을 선택해 주세요">
						<option value="경로(만 65세 이상) 0명" selected="selected">
							경로(만 65세 이상) 0명
						</option>
						<option value="경로(만 65세 이상) 1명">
							경로(만 65세 이상) 1명
						</option>
						<option value="어린이(만 6~12세) 2명">
							경로(만 65세 이상) 2명
						</option>
						<option value="어린이(만 6~12세) 3명">
							경로(만 65세 이상) 3명
						</option>
						<option value="어린이(만 6~12세) 4명">
							경로(만 65세 이상) 4명
						</option>
						<option value="어린이(만 6~12세) 5명">
							경로(만 65세 이상) 5명
						</option>
						<option value="어린이(만 6~12세) 6명">
							경로(만 65세 이상) 6명
						</option>
						<option value="어린이(만 6~12세) 7명">
							경로(만 65세 이상) 7명
						</option>
						<option value="어린이(만 6~12세) 8명">
							경로(만 65세 이상) 8명
						</option>
						<option value="어린이(만 6~12세) 9명">
							경로(만 65세 이상) 9명
						</option>
						<option value="어린이(만 6~12세) 10명">
							경로(만 65세 이상) 10명
						</option>													
					</select>
					<label>명</label>	
				</div>
				
				<br>
				<div class= "rt">
					<label id="seattype">좌석종류</label>
					<select style="border: 1px solid #black; padding: 5px; width: 105px; background: #fff;" name="seattype" id="seattype" class="ymd checkForm" onchange="changeWeekInfo();" option="{isMust :false, message : '좌석를 선택해 주세요.'}" title="좌석 종류를 선택해 주세요">
						<option value="좌석 종류" selected="selected">
							좌석 종류
						</option>
						<option value="일반">
							일반
						</option>
						<option value="특실">
							특실
						</option>
					</select>					
				</div>
				
				<br>
				<div class= "rt">
					<label id="seattype">차종구분</label>
					&nbsp;
					<input class="form-check-input" type="radio" name="flexRadioDefault" id="CRX">
					<label class="form-check-label" for="CRX">
					    CRX
					</label>
					&nbsp;
					<input class="form-check-input" type="radio" name="flexRadioDefault" id="KTX" checked>
					<label class="form-check-label" for="KTX">
					    KTX
					</label>
				</div>	
				
				<br><br><br>
				<div class="search">
					<button type="button" class="btn btn-success">조회하기</button>
				</div>
			</div>
		</div>	
   </div>
   
   
</div>
<!-- 오늘 이전으로 선택되지 않도록 설정 -->
<script>
	var now_utc = Date.now()
		var timeOff = new Date().getTimezoneOffset()*60000;
		var today = new Date(now_utc-timeOff).toISOString().split("T")[0];
		document.getElementById("Date").value = new Date().toISOString().substring(0, 10);
		document.getElementById("Date").setAttribute("min", today);
</script>
</body>


</html>