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
}
