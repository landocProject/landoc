package com.kh.landocProject.askDr.controller;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.landocProject.askDr.model.service.AskDrService;
import com.kh.landocProject.askDr.model.vo.AskDrBoard;

@Controller
public class MainAskDrController {
	
	@Resource
	private AskDrService askDrServiceImpl;
	
	@RequestMapping(value="askDr.do", method=RequestMethod.GET)
	public String askDr() {
		return "askDr/askDr";
	}
	
//	카테고리별 의사에게 물어봐 list 뽑아오기 -범석
	@RequestMapping(value="askDrBoard.do", method=RequestMethod.GET)
	public ModelAndView selectAskDrBoard(@RequestParam String category) throws Exception{
		ModelAndView mv = new ModelAndView("askDr/askDrBoard");
		int categoryNo = Integer.valueOf(category);
		ArrayList<AskDrBoard> list = (ArrayList<AskDrBoard>)askDrServiceImpl.selectAskDrBoard(categoryNo);
		mv.addObject("askDrBoardList", list);
		return mv;
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
