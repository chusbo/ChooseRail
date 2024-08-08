<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
	* { margin: 0; padding: 0; }
	.birthBox {
		width: 20%;
	}
	.genderBox {
		width: 5%;
	}
	.successPhoneChk {
		color: green;
	}
</style>	
<title>문자(SMS) 인증</title>
</head>
<body>
	<div class="titleBox border border-3 border-success p-2 text-center text-success fs-4 fw-bold">
		<label for="phone"><strong>문자(SMS) 인증</strong></label>
	</div>
	<div class="contentBox border border-3 border-success m-2 p-2">
		<label for="name" class="mt-2"><strong>이름</strong></label><br>
		<input type="text" id="name" name="name" class="nameBox my-2 p-1 w-100 fs-6" title="이름 입력" placeholder="이름을 입력해 주세요." required autofocus/><br>
		
		<label for="birth" class="mt-2"><strong>생년월일/성별</strong></label><br>
		<input type="text" id="birth" name="birth" class="birthBox my-2 p-1 text-center fs-6" title="생년월일 입력" placeholder="• • • • • •" required />
		- <input type="text" id="gender" name="gender" class="genderBox p-1 text-center my-2 fs-6" title="성별 입력" placeholder="•" required /> • • • • • •<br>
		
		<label for="phone" class="mt-2"><strong>휴대폰번호</strong></label><br>
		<div class="phoneSet">
			<input type="text" id="phone" name="phone" class="phoneBox my-2 p-1 w-100 fs-6" title="휴대폰번호 입력" placeholder="휴대폰번호를 입력해 주세요." required /><br>
			<button id="phoneChk" class="btn btn-success w-100 my-2">인증하기</button><br>
		</div>
		<label for="phone2" class="mt-2"><strong>인증번호</strong></label><br>
		<div class="certiSet">
			<input type="text" id="phone2" name="phone2" class="phone2Box my-2 p-1 w-100 fs-6" title="인증번호 입력" placeholder="숫자 6자리를 입력해 주세요." disabled required />
			<button id="phoneChk2" class="btn btn-success w-100 my-2" disabled>확인</button>
			<input type="hidden" id="phoneDoubleChk"/>
			<button class="cancelBox btn btn-secondary w-100 my-2 me-2" id="cancel" name="cancel" onclick="window.close()">취소</button>
			<div id="resultMessage" class="successPhoneChk"></div>
		</div>
	</div>
<script>
	$(document).ready(function() {
		let code2 = "";
		const name_RegExp = /^[가-힣]{2,6}$/;
		const birth_RegExp = /^(0[0-9]|[1-9][0-9])(0[1-9]|[1][0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
		const gender_RegExp = /^[1-4]$/;
		const phone_RegExp = /^010-?[0-9]{4}-?[0-9]{4}$/;		
		
		function validateForm() {
			// 이름
			const name = $("#name").val();
			if (!name_RegExp.test(name)) {
				alert("한글 2~6자만 입력해 주세요.\n예) 김자바");
				$("#name").focus();
				return false;
			}
			
			// 생년월일
			const birth = $("#birth").val();
			if (!birth_RegExp.test(birth)) {
				alert("생년월일 6자리를 올바르게 작성해 주세요.\n예) 961010");
				$("#birth").focus();
				return false;
			}
			
			// 성별
			const gender = $("#gender").val();
			if (!gender_RegExp.test(gender)) {
				alert("1 ~ 4까지의 올바른 성별을 입력해 주세요.\n예) 남성: 1, 3/ 여성: 2, 4");
				$("#gender").focus();
				return false;
			}
			
			// 휴대폰번호
			const phone = $("#phone").val();
			if (phone == "") {
				alert("휴대폰번호가 입력되지 않았습니다. 휴대폰번호를 입력해주세요.");
				$("#phone2").attr("disabled",true);
				$("#phone3").attr("disabled",true);
				phone.focus();	
			} else if (!phone_RegExp.test(phone)) {
				alert("올바르지 못한 휴대폰번호가 입력되었습니다. 올바른 휴대폰번호를 입력해주세요.");
				$("#phone").focus();
				return false;
			}
			return true;
		}
		
		$("#phoneChk").click(function() {
			if (!validateForm()) {
				return;
			}
			
			const phone = $("#phone").val();
			alert("인증번호 발송이 완료되었습니다.\n휴대폰에서 인증번호 확인을 해주십시오.");
			
			$.ajax({
				type: "GET",
				url: "/phoneCheck?phone=" + phone,
				cache: false,
				success: function(data) {
					if (data === "error" || data === "") {
						alert("휴대폰번호가 올바르지 않습니다.");
						$("#phone2").attr("disabled", true);
						$("#phoneChk2").attr("disabled", true);
					} else {
						$("#phone2").attr("disabled", false);
						$("#phoneChk2").attr("disabled", false);
						$("#phoneChk2").show();
						code2 = data;
					}
				}
			});
		});
		
		$("#phoneChk2").click(function() {
			const enteredCode = $("#phone2").val();
			if (enteredCode === code2) {
				$("#resultMessage").text("인증번호가 일치합니다.");
				$("#resultMessage").css("color","green");
				$("#phoneDoubleChk").val("true");
				opener.location.href = '/signup.do';
				window.close();
			} else {
				$("#resultMessage").text("인증번호가 일치하지 않습니다. 확인해주시기 바랍니다.");
				$("#resultMessage").css("color","red");
				$("#phoneDoubleChk").val("false");
			}			
		});
	});
</script>
</body>
</html>
