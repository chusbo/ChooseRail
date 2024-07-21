<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>

<title>test</title>
<style>
 
</style>
</head>
<body>
	<input type="text" id="my_name" value="">
	<input type="button" value="Greeting" onclick="sayHello()">
	
	<h2>제일 좋아하는 과목은?</h2>
	<input type = "radio" name="subject" value="html">HTML<br>
	<input type = "radio" name="subject" value="CSS">CSS<br>
	<input type = "radio" name="subject" value="JavaScript">JavaScript<br>
		
	<input type ="button" value="답안지 제출" onclick="findSubject()">
<script>
	function sayHello(){
		var textBox = document.getElementById('my_name');
		
		if(textBox != null){
			alert(textBox.value + '님 안녕하세요.');
		}
	}
	
	function findSubject(){
		var arrRadio = document.getElementsByName('subject');
		console.log(arrRadio);
		for(var i = 0; i<arrRadio.length; i++){
			if(arrRadio[i].checked){
				alert(arrRadio[i].value + '과목을 좋아하시는군요');
			}
		}
	}
</script>
</body>
</html>
