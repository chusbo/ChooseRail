package com.project.crx.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CrxControllerImpl {

    @GetMapping("/areservation.do")
    public String areservation() {
        return "areservation"; 
    }
    
    @GetMapping("/breservation.do")
    public String breservation() {
        return "breservation"; 
    }
    
    @GetMapping("/list.do")
    public String list() {
        return "list"; 
    }
}