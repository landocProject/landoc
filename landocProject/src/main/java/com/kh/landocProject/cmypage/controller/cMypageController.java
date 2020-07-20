package com.kh.landocProject.cmypage.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.landocProject.cmypage.model.service.cMypageService;
import com.kh.landocProject.cmypage.model.vo.LikeHp;
import com.kh.landocProject.member.model.vo.Client;


@Controller
public class cMypageController {

	@Autowired
	private cMypageService cmService;
	
	@RequestMapping(value="clientMypage.do", method=RequestMethod.GET)
	public String login() {
		return "mypage/myPageWork";
	}
	
	@RequestMapping(value="likeHp.do")
	public ModelAndView likeHospitalList(ModelAndView mv, HttpSession session) {
		Client loginClient = (Client)session.getAttribute("loginClient");
		System.out.println("loginClient:"+loginClient);
		String cNo =loginClient.getcNo();
		System.out.println("cno" + cNo);
		ArrayList<LikeHp> list = cmService.selectList(cNo);
		System.out.println("list:"+list);
		if(list!=null) {
			mv.addObject("likeHplist",list);
			mv.setViewName("mypage/myPageLikeHospital");
		}else {
			
		}
		
		return mv;
	}
}
