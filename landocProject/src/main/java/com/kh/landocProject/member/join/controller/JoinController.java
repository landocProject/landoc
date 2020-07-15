package com.kh.landocProject.member.join.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class JoinController {
	@RequestMapping(value="joinMember.do", method=RequestMethod.GET)
	public String joinMember() {
		return "member/join/joinMember";
	}
	
	@RequestMapping(value="joinDoctor.do", method=RequestMethod.GET)
	public String joinDoctor() {
		return "member/join/joinDoctor";
	}
}
