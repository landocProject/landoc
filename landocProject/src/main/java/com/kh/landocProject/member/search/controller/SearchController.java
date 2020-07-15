package com.kh.landocProject.member.search.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SearchController {
	@RequestMapping(value="searchId.do", method=RequestMethod.GET)
	public String searchId() {
		return "member/search/searchId";
	}

	@RequestMapping(value="searchPwd.do", method=RequestMethod.GET)
	public String searchPwd() {
		return "member/search/searchPwd";
	}

	@RequestMapping(value="searchPwd2.do", method=RequestMethod.GET)
	public String searchPwd2() {
		return "member/search/searchPwd2";
	}

	@RequestMapping(value="searchPwd3.do", method=RequestMethod.GET)
	public String searchPwd3() {
		return "member/search/searchPwd3";
	}

	@RequestMapping(value="searchPwd4.do", method=RequestMethod.GET)
	public String searchPwd4() {
		return "member/search/searchPwd4";
	}
	
}
