package com.kh.landocProject.askDr.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.kh.landocProject.askDr.model.service.AskDrService;
import com.kh.landocProject.askDr.model.vo.AskDrBoard;
import com.kh.landocProject.askDr.model.vo.AskDrBoardPagination;
import com.kh.landocProject.askDr.model.vo.AskDrCategoryMap;
import com.kh.landocProject.member.model.vo.Client;

@Controller
public class MainAskDrController {

	@Resource
	private AskDrService askDrServiceImpl;
	@Resource
	private AskDrCategoryMap askDrCategoryMap;

	@RequestMapping(value = "askDr.do", method = RequestMethod.GET)
	public String askDr() {
		return "askDr/askDr";
	}

//	카테고리별 의사에게 물어봐 list 뽑아오기 -범석
	@RequestMapping(value = "askDrBoard.do", method = RequestMethod.GET)
	public ModelAndView selectAskDrBoard(ModelAndView mv, @RequestParam String category, @RequestParam int pageNo)
			throws Exception {
		mv.setViewName("askDr/askDrBoard");
		int currentPage = pageNo;
		int categoryNo = Integer.valueOf(category);

		String subject = askDrCategoryMap.getCategoryMap().get(categoryNo);

		int listCount = askDrServiceImpl.selectAskDrBoardCount(categoryNo);
		AskDrBoardPagination page = AskDrBoardPagination.getAskDrBoardPagination(currentPage, listCount);
		ArrayList<AskDrBoard> list = (ArrayList<AskDrBoard>) askDrServiceImpl.selectAskDrBoard(categoryNo, page);
		
		mv.addObject("boardStatus", 1);
		mv.addObject("askDrBoardList", list);
		mv.addObject("subject", subject);
		mv.addObject("page", page);
		mv.addObject("categoryNo", categoryNo);
		return mv;
	}

//	의사에게 물어봐 게시글 상세보기 -범석
	@RequestMapping(value = "askDrDetail.do", method = RequestMethod.GET)
	public ModelAndView askDrDetail(ModelAndView mv, @RequestParam int category,
			// 위에는 파라미터를 String으로 받았다면 여기는 int로 받아보자
			// 된다면 바로 int로 고쳐주기!
			@RequestParam int bNo) throws Exception {
		mv.setViewName("askDr/askDrDetail");

		String subject = askDrCategoryMap.getCategoryMap().get(category);
		AskDrBoard askDrBoardDetail = askDrServiceImpl.selectAskDrBoardDeatil(category, bNo);
//		changeGender(askDrBoardDetail);
		askDrBoardDetail.setGender(changeGender(askDrBoardDetail.getGender()));
		mv.addObject("askDrBoardDetail", askDrBoardDetail);
		mv.addObject("subject", subject);
		mv.addObject("categoryNo", category);
//		댓글도 가져와야함
//		mv.addObject();		이게 댓글가져올거
		return mv;
	}

	public String changeGender(String gender) {
		if (gender.equals("M")) {
			return "남";
		} 
		else {
			return "여";
		}
	}

	@RequestMapping(value = "askDrBoardSearch.do", method = RequestMethod.GET)
	public ModelAndView askDrBoardSearch(ModelAndView mv, 
																@RequestParam int searchBoardOption,
																@RequestParam String searchBoardContent, 
																@RequestParam int category, 
																@RequestParam int pageNo) {
		mv.setViewName("askDr/askDrBoard");

		String subject = askDrCategoryMap.getCategoryMap().get(category);

		HashMap<String, Object> parameterMap = new HashMap<String, Object>();
		parameterMap.put("category", category);
		parameterMap.put("searchBoardOption", searchBoardOption);
		searchBoardContent = deleteBlank(searchBoardContent);
		parameterMap.put("searchBoardContent", searchBoardContent);
		int listCount = askDrServiceImpl.selectAskDrBoardSearchCount(parameterMap);

		int currentPage = pageNo;
		AskDrBoardPagination page = AskDrBoardPagination.getAskDrBoardPagination(currentPage, listCount);
		ArrayList<AskDrBoard> searchList = (ArrayList<AskDrBoard>) askDrServiceImpl.selectAskDrBoardSearch(parameterMap,
				page);

		mv.addObject("boardStatus", 2);
		mv.addObject("askDrBoardSearchList", searchList);
		mv.addObject("subject", subject);
		mv.addObject("page", page);
		mv.addObject("searchBoardContent", searchBoardContent);
		mv.addObject("searchBoardOption", searchBoardOption);
		mv.addObject("categoryNo", category);
		return mv;
	}
	
	public String deleteBlank(String context) {
		return context.replaceAll("\\p{Z}", "");
	}
	
//	게시글 insert부분, 나중에 꼭 게시글 작성완료창을 만들어서 꾸며볼테야!
	@RequestMapping(value = "askDrInsertForm.do", method = RequestMethod.GET)
	public ModelAndView askDrInsertForm(ModelAndView mv,
															@RequestParam int category) {
		mv.setViewName("askDr/askDrInsert");
		mv.addObject("categoryNo", category);
		return mv;
	}

	@RequestMapping(value = "askDrInsert.do", method = RequestMethod.POST)
	public void askDrInsert(ModelAndView mv,
										AskDrBoard askDrBoard,
										@SessionAttribute("loginClient") Client client) {
//		mv.setViewName(viewName);
		//세션값 받기, gender처리, categoryCode
		askDrBoard.setCno(client.getcNo());
		
		System.out.println("MainAskDrController Test line 131");
		System.out.println(askDrBoard);
		
//		return ;
	}
	
	
	@RequestMapping(value = "askDrSearch.do", method = RequestMethod.GET)
	public String askDrSearch() {
		return "askDr/askDrSearch";
	}
}
