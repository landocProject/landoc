package com.kh.landocProject.askDr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class mainAskDrController {
	@RequestMapping(value="askDr.do", method=RequestMethod.GET)
	public String askDr() {
		return "askDr/askDr";
	}
	
	@RequestMapping(value="askDrBoard.do", method=RequestMethod.GET)
	public String askDrBoard() {
		return "askDr/askDrBoard";
	}
	
	@RequestMapping(value="askDrDetail.do", method=RequestMethod.GET)
	public String askDrDetail() {
		return "askDr/askDrDetail";
	}

	@RequestMapping(value="askDrInsert.do", method=RequestMethod.GET)
	public String askDrInsert() {
		return "askDr/askDrInsert";
	}
	
	@RequestMapping(value="askDrSearch.do", method=RequestMethod.GET)
	public String askDrSearch() {
		return "askDr/askDrSearch";
	}
}
