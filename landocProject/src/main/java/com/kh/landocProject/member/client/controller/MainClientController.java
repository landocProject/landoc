package com.kh.landocProject.member.client.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainClientController {
	@RequestMapping(value="joinClient.do", method=RequestMethod.GET)
	public String joinClient() {
		return "member/client/joinClient";
	}
}
