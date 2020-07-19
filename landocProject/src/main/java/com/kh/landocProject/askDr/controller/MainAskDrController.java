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
import com.kh.landocProject.askDr.model.vo.AskDrBoardPagination;
import com.kh.landocProject.askDr.model.vo.AskDrCategoryMap;

@Controller
public class MainAskDrController {
	
	@Resource
	private AskDrService askDrServiceImpl;
	@Resource
	private AskDrCategoryMap askDrCategoryMap;
	
	@RequestMapping(value="askDr.do", method=RequestMethod.GET)
	public String askDr() {
		return "askDr/askDr";
	}
	
//	카테고리별 의사에게 물어봐 list 뽑아오기 -범석
	@RequestMapping(value="askDrBoard.do", method=RequestMethod.GET)
	public ModelAndView selectAskDrBoard(@RequestParam String category,
																@RequestParam int currentPage) throws Exception{
		ModelAndView mv = new ModelAndView("askDr/askDrBoard");
		
		int categoryNo = Integer.valueOf(category);
		
		askDrCategoryMap.setCategoryMap();
		String subject = askDrCategoryMap.getCategoryMap().get(categoryNo);
		
		ArrayList<AskDrBoard> list = (ArrayList<AskDrBoard>)askDrServiceImpl.selectAskDrBoard(categoryNo);
		
		
		int listCount = askDrServiceImpl.selectAskDrBoardCount(categoryNo);
//		AskDrBoardPagination pagenation = new AskDrBoardPagination(listCount, currentPage);		에러 해결해주기
		
		
		mv.addObject("askDrBoardList", list);
		mv.addObject("subject", subject);
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
