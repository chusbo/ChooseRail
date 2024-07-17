package com.project.crx.controller;

import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface CrxController {
	
	ModelAndView main(HttpServletRequest request, HttpServletResponse response) throws Exception;	
	
}