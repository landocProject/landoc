package com.kh.landocProject.member.drClient.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainDrClientController {
	@RequestMapping(value="joinDr.do", method=RequestMethod.GET)
	public String joinDrClient() {
		return "member/drClient/joinDr";
	}
	
	@RequestMapping(value="joinDr2.do", method=RequestMethod.GET)
	public String joinDrClient2() {
		return "member/drClient/joinDr2";
	}
	
	@RequestMapping(value="joinDr3.do", method=RequestMethod.GET)
	public String joinDrClient3() {
		return "member/drClient/joinDr3";
	}
	
	@RequestMapping(value="joinDr4.do", method=RequestMethod.GET)
	public String joinDrClient4() {
		return "member/drClient/joinDr4";
	}
}
