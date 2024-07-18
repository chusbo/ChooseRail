package com.project.crx.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CrxControllerImpl {

    @GetMapping("/ticket.do")
    public String ticket() {
        return "ticket"; 
    }
    
    @GetMapping("/groupTicket.do")
    public String groupTicket() {
        return "groupTicket"; 
    }
    
    @GetMapping("/list.do")
    public String list() {
        return "list"; 
    }
    
    @GetMapping("/reservation.do")
    public String reservation() {
        return "reservation"; 
    }
    
    @GetMapping("/payment.do")
    public String payment() {
        return "payment"; 
    }
}