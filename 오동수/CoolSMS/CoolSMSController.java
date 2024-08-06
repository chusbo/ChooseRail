package com.project.crx.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CoolSMSController {
	
	@GetMapping("/coolSMS.do")
	public String coolSMS() {
		return "coolSMS";
	}
	
	@Autowired
	private CoolSMSService coolSMSService;
	
	@GetMapping("/phoneCheck")
	@ResponseBody
	public String sendSMS(@RequestParam("phone") String userPhoneNumber) {
	
		System.out.println("Received phone number parameter: " + userPhoneNumber);
		
		if ( userPhoneNumber == null || userPhoneNumber.isEmpty()) {
			System.out.println("휴대폰 번호가 입력되지 않았습니다.");
			return "coolSMS";
		} else {
			System.out.println("휴대폰 번호가 입력되었습니다.");
			
			// 6자리의 인증번호 생성
			int randomNumber = (int)((Math.random()* (999999 - 100000 + 1)) + 100000);

			coolSMSService.certifiedPhoneNumber(userPhoneNumber,randomNumber);
		
			System.out.println("userPhoneNumber: " + userPhoneNumber);
			System.out.println("randomNumber: " + randomNumber);
			return Integer.toString(randomNumber);
		}
	}	
}