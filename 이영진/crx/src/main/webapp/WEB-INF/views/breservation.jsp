<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<title>일반 승차권 예매</title>
<style>
	.all{
			width: 1200px;
			margin: 0 auto;
		}
		.tiline{
			display:inline;
			border:solid 1px green;
			padding: 5px;
			color: green;
		}
		.mid{
			border:solid 1px green;
			height: 500px;
		}
		.relist{
			margin: 5px;
			padding: 5px;
		}
		#start{
			margin: 3px;
		}
		#end{
			
			margin: 3px;
		}
		#listdate{
			margin: 3px;
		}
	
</style>
</head>
<body>	 
<jsp:include page="header.jsp" />
<div class="all">
	
	<div class="maintitle">
		<h1>단체 승차권</h1>
		<hr>
	</div>
	
	<br>
	<div class="grid text-center">
	  <div class="tiline g-col-3" style="background-color:#ccffcc;">1.조회</div>
	  -
	  <div class="tiline g-col-3">2.예약</div>
	  -
	  <div class="tiline g-col-3">3.결제</div>
	  -
	  <div class="tiline g-col-3">4.발권</div>
   </div>
	
   <br>
   <div class="mid">
		<br>
		<ul class="nav nav-tabs">
			<li class="nav-item">
				<a class="nav-link" aria-current="page" href="areservation.do">일반승차권 조회</a>
			</li>
			<li class="nav-item">
				<a class="nav-link active" href="breservation.do">단체승차권 조회</a>
			</li>
		</ul>
		<div class="relist">
			<label id="start">출발역</label>
			<input id="start" name="txtGoStart" type="text" class="inp200" value="대전" onchange="hideResult();" title="출발역" autocomplete="off" style="ime-mode:active">
			<a href="#"><img src="/images/btn_tra_sch.png" alt="조회"></a>
									
			&nbsp;&nbsp;&nbsp;
			<label id="end">도착역</label>
			<input id="end" name="txtGoStart" type="text" class="inp200" value="서울" onchange="hideResult();" title="출발역" autocomplete="off" style="ime-mode:active">
			<a href="#"><img src="/images/btn_tra_sch.png" alt="조회"></a>	
						
		<br>
		<div>
			<label id="listdate">출발일</label>
			<select style="border: 1px solid #black; padding: 5px; width: 170px; background: #fff;" name="dptDt" id="dptDt" class="ymd checkForm" onchange="changeWeekInfo();" option="{isMust :false, message : '출발일자를 선택하십시오.'}" title="출발일자 선택">
				<option value="20240717" selected="selected">
					2024/07/17(수)
				</option>
				<option value="20240718">
					2024/07/18(목)
				</option>
				<option value="20240719">
					2024/07/19(금)
				</option>
				<option value="20240720">
					2024/07/20(토)
				</option>
				<option value="20240721">
					2024/07/21(일)
				</option>
				<option value="20240722">
					2024/07/22(월)
				</option>										
				<option value="20240723">
					2024/07/23(화)
				</option>
				<option value="20240724">
					2024/07/24(수)
				</option>
				<option value="20240725">
					2024/07/25(목)
				</option>
				<option value="20240726">
					2024/07/26(금)
				</option>
				<option value="20240727">
					2024/07/27(토)
				</option>
				<option value="20240728">
					2024/07/28(일)
				</option>
				<option value="20240729">
					2024/07/29(월)
				</option>
				<option value="20240730">
					2024/07/30(화)
				</option>
				<option value="20240731">
					2024/07/31(수)
				</option>
				<option value="20240801">
					2024/08/01(목)
				</option>
				<option value="20240802">
					2024/08/02(금)
				</option>									
				<option value="20240803">
					2024/08/03(토)
				</option>							
				<option value="20240804">
					2024/08/04(일)
				</option>										
				<option value="20240805">
					2024/08/05(월)
				</option>
				<option value="20240806">
					2024/08/06(화)
				</option>
				<option value="20240807">
					2024/08/07(수)
				</option>
				<option value="20240808">
					2024/08/08(목)
				</option>
				<option value="20240809">
					2024/08/09(금)
				</option>
				<option value="20240810">
					2024/08/10(토)
				</option>
				<option value="20240811">
					2024/08/11(일)
				</option>
				<option value="20240812">
					2024/08/12(월)
				</option>
				<option value="20240813">
					2024/08/13(화)
				</option>										
				<option value="20240814">
					2024/08/14(수)
				</option>					
				<option value="20240815">
					2024/08/15(목)
				</option>
				<option value="20240816">
					2024/08/16(금)
				</option>
				<option value="20240817">
					2024/08/17(토)
				</option>
			</select>
							
			&nbsp;&nbsp;&nbsp;
			<label id="listtime">시간</label>
			<select style="border: 1px solid #black; padding: 5px; width: 55px; background: #fff;" name="listtime" id="listtime" class="ymd checkForm" onchange="changeWeekInfo();" option="{isMust :false, message : '출발시간을 선택하십시오.'}" title="출발시간 선택">
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
		<div>
			sss
		</div>	
 	</div>
</div>
</body>
</html>