<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
<meta http-equiv="X-UA-Compatible" content="ie=edge" /> 
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<title>문자인증</title>
</head>
<body>
	<table>
	<tr class="mobileNo">
		<th>
			<label for="phone">휴대폰 번호</label>
		</th>
		<td>
			<input id="phone" type="text" name="phone" title="전화번호 입력" required/>
			<span id="phoneChk" class="doubleChk"><button>인증하기</button></span><br/>
			<input id="phone2" type="text" name="phone2" title="인증번호 입력" disabled required/>
			<span id="phoneChk2" class="doubleChk"><button id="phone3" name="phone3" disabled>본인인증</button></span>
			<span class="point successPhoneChk">휴대폰 번호를 입력 후 인증하기를 눌러주십시오.</span>
			<input type="hidden" id="phoneDoubleChk"/>
		</td>
	</tr>
	</table>
<script>
	//휴대폰 번호 인증
	var code2 = "";
	const pattern = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
	
	$("#phoneChk").click(function(){
		if($("#phone").val() == "") {
			alert("휴대폰 번호가 입력되지 않았습니다. 휴대폰 번호를 입력해주세요.");
			$("#phone2").attr("disabled",true);
			$("#phone3").attr("disabled",true);
			$("#phone").focus();			
		} else if ($('#phone')){
			alert("인증번호 발송이 완료되었습니다.\n휴대폰에서 인증번호 확인을 해주십시오.");
			var phone = $("#phone").val();
			$.ajax({
		        type:"GET",
		        url:"/phoneCheck?phone=" + phone,
		        cache : false,
		        success:function(data) {
		        	
					if(data == "error" || data == "") {
		        		alert("휴대폰 번호가 올바르지 않습니다.")
						$(".successPhoneChk").text("유효한 번호를 입력해주세요.");
						$(".successPhoneChk").css("color","red");
						$("#phone").attr("autofocus",true);
						$("#phone2").attr("disabled",true);
						$("#phone3").attr("disabled",true);
		        	} else {	        		
		        		$("#phone2").attr("disabled",false);
						$("#phone3").attr("disabled",false);
		        		$("#phoneChk2").css("display","inline-block");
		        		$(".successPhoneChk").text("인증번호를 입력한 뒤 본인인증을 눌러주십시오.");
		        		$(".successPhoneChk").css("color","green");
		        		$("#phone").attr("readonly",false);
		        		code2 = data;
		        	}
		        }
		    });
		}
		
	});
	
	//휴대폰 인증번호 대조
	$("#phoneChk2").click(function() {
		if($("#phone2").val() == code2) {
			$(".successPhoneChk").text("인증번호가 일치합니다.");
			$(".successPhoneChk").css("color","green");
			$("#phoneDoubleChk").val("true");
			$("#phone2").attr("disabled",true);
		} else {
			$(".successPhoneChk").text("인증번호가 일치하지 않습니다. 확인해주시기 바랍니다.");
			$(".successPhoneChk").css("color","red");
			$("#phoneDoubleChk").val("false");
			$(this).attr("autofocus",true);
		}
	});
</script>		
</body>
</html>