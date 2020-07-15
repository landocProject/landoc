package com.kh.landocProject.member.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	@RequestMapping(value="login.do", method=RequestMethod.GET)
	public String login() {
		return "member/login/login";
	}
	
	@RequestMapping(value="joinClient.do", method=RequestMethod.GET)
	public String joinClient() {
		return "member/login/joinClient";
	}
	
	@RequestMapping(value="joinDr.do", method=RequestMethod.GET)
	public String joinDrClient() {
		return "member/login/joinDr";
	}
	
	@RequestMapping(value="joinDr2.do", method=RequestMethod.GET)
	public String joinDrClient2() {
		return "member/login/joinDr2";
	}
	
	@RequestMapping(value="joinDr3.do", method=RequestMethod.GET)
	public String joinDrClient3() {
		return "member/login/joinDr3";
	}
	
	@RequestMapping(value="joinDr4.do", method=RequestMethod.GET)
	public String joinDrClient4() {
		return "member/login/joinDr4";
	}
}
