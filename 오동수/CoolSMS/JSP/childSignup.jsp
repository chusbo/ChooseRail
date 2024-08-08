<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>
	#wrapper{
		text-align: center;
		width: 1200px;
		margin: auto;
		padding: 20px;
	}
	
	.hrline{
		position:relative;
		right:-15%;
		width:70%;
	}
	.centerTable td{
		padding:12px;
	}

</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="sidemenu.jsp" />
	<div id="wrapper">
	<form method="post" name="update" action="#" onsubmit="return checkForm()">
	    <h1>회원가입</h1>
		<br><hr class="hrline">
	    <table align="center" class="centerTable">
	        <tr>
	            <td width="130">비밀번호</td>
	            <td width="220"><input type="password" name="userpwd" id="userpwd"></td>
	        </tr>
			<tr>
	            <td width="130">비밀번호 확인</td>
	            <td width="200"><input type="password" name="checkuserpwd" id="checkuserpwd"></td>
	        </tr>
	    	<tr>
	            <td width="130">이름</td>
	            <td width="200"><input type="text" name="username" id="username"></td>
	        </tr>
	        <tr>
	            <td width="130">생년월일</td>
	            <td width="200"><input type="date" name="userbirth" id="userbirth"></td>
	        </tr>
			<tr>
	            <td width="130">성별</td>
	            <td width="200">
	                <select name="usergender" id="usergender">
	                    <option value="남성">남성</option>
	                    <option value="여성">여성</option>
	                </select>
	            </td>
	        </tr>			
			<tr>
			    <td width="130">휴대폰 번호</td>
			    <td width="200"><input type="text" name="usertel" id="usertel"></td>
			</tr>
			<tr>
			    <td width="130">보호자 휴대폰 번호</td>
			    <td width="200"><input type="text" name="parenttel" id="parenttel"></td>
			</tr>
			<tr>
			    <td width="130">이메일</td>
			    <td width="200"><input type="text" name="useremail" id="useremail"></td>
			</tr>
			<tr>
			    <td width="130">주소</td>
			    <td width="200"><input type="text" name="useradd" id="useradd"></td>
			</tr>
		</table>
		<br>
		<div style="text-align: center;">
		    <button type="submit" class="btn btn-success" onclick="location.href='finishSignup.do'">가입하기</button>
		    <button type="reset" class="btn btn-success">다시입력</button>
		</div>

	</form>
	</div>
	

	<a href="finishSignup.do">회원가입 완료 페이지 이동</a>
	
	<jsp:include page="footer.jsp" />
</body>
</html>