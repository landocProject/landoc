package com.kh.landocProject.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainMemberController {
	@RequestMapping(value="login.do", method=RequestMethod.GET)
	public String login() {
		return "member/login";
	}
	
	@RequestMapping(value="joinClient.do", method=RequestMethod.GET)
	public String joinClient() {
		return "client/joinClient";
	}
	
	@RequestMapping(value="joinDr.do", method=RequestMethod.GET)
	public String joinDrClient() {
		return "drClient/joinDr";
	}
	
	@RequestMapping(value="joinDr2.do", method=RequestMethod.GET)
	public String joinDrClient2() {
		return "drClient/joinDr2";
	}
	
	@RequestMapping(value="joinDr3.do", method=RequestMethod.GET)
	public String joinDrClient3() {
		return "drClient/joinDr3";
	}
	
	@RequestMapping(value="joinDr4.do", method=RequestMethod.GET)
	public String joinDrClient4() {
		return "drClient/joinDr4";
	}
	
	@RequestMapping(value="searchId.do", method=RequestMethod.GET)
	public String searchId() {
		return "member/searchId";
	}

	@RequestMapping(value="searchPwd.do", method=RequestMethod.GET)
	public String searchPwd() {
		return "member/searchPwd";
	}

	@RequestMapping(value="searchPwd2.do", method=RequestMethod.GET)
	public String searchPwd2() {
		return "member/searchPwd2";
	}

	@RequestMapping(value="searchPwd3.do", method=RequestMethod.GET)
	public String searchPwd3() {
		return "member/searchPwd3";
	}

	@RequestMapping(value="searchPwd4.do", method=RequestMethod.GET)
	public String searchPwd4() {
		return "member/searchPwd4";
	}
	
	
}
