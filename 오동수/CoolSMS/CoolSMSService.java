package com.project.crx.test;

import java.util.HashMap;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Service
public class CoolSMSService {
	
	@Value("${coolsms.apikey}")
	private String apiKey;
	@Value("${coolsms.apisecret}")
	private String apiSecret;
	@Value("${coolsms.fromnumber}")
	private String fromNumber;
	
	public void certifiedPhoneNumber(String userPhoneNumber, int randomNumber) {
		
	    Message coolsms = new Message(apiKey, apiSecret);

	    HashMap<String, String> params = new HashMap<String, String>();
	    params.put("to", userPhoneNumber);
	    params.put("from", fromNumber);
	    params.put("type", "SMS");
	    params.put("text", "[CRX] 본인인증을 위해 인증번호 [" + randomNumber + "]를 입력해 주세요.");
	    params.put("app_version", "test app 1.2");

	    try {
	        JSONObject obj = (JSONObject) coolsms.send(params);
	        System.out.println(obj.toString());
	      } catch (CoolsmsException e) {
	        System.out.println("errorMessage: " + e.getMessage());
	        System.out.println("errorCode: " + e.getCode());
	      }
	    
	}
}
