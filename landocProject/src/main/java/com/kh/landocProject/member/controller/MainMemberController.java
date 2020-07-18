package com.kh.landocProject.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.landocProject.member.model.Exception.MainMemberException;
import com.kh.landocProject.member.model.service.MainMemberService;
import com.kh.landocProject.member.model.vo.Client;
import com.kh.landocProject.member.model.vo.DrClient;

@SessionAttributes("loginUser")
@Controller
public class MainMemberController {
	
	@Autowired
	private MainMemberService mService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@RequestMapping(value="loginView.do", method=RequestMethod.GET)
	public String login() {
		return "member/login";
	}
	
	// 일반 회원가입 창 이동_진교
	@RequestMapping(value="joinClientView.do", method=RequestMethod.GET)
	public String joinClient() {
		return "client/joinClient";
	}
	
	// 의사 회원가입 창 이동_진교
	@RequestMapping(value="joinDrView.do", method=RequestMethod.GET)
	public String joinDrClient() {
		return "drClient/joinDr";
	}
	
	@RequestMapping(value="joinDr2.do", method=RequestMethod.GET)
	public String joinDrClient2() {
		return "drClient/joinDr2";
	}
	
	@RequestMapping(value="joinDr3.do", method=RequestMethod.GET)
	public String joinDrClient3() {
		return "drClient/joinDr3";
	}
	
	@RequestMapping(value="joinDr4.do", method=RequestMethod.GET)
	public String joinDrClient4() {
		return "drClient/joinDr4";
	}
	
	@RequestMapping(value="searchId.do", method=RequestMethod.GET)
	public String searchId() {
		return "member/searchId";
	}

	@RequestMapping(value="searchPwd.do", method=RequestMethod.GET)
	public String searchPwd() {
		return "member/searchPwd";
	}

	@RequestMapping(value="searchPwd2.do", method=RequestMethod.GET)
	public String searchPwd2() {
		return "member/searchPwd2";
	}

	@RequestMapping(value="searchPwd3.do", method=RequestMethod.GET)
	public String searchPwd3() {
		return "member/searchPwd3";
	}

	@RequestMapping(value="searchPwd4.do", method=RequestMethod.GET)
	public String searchPwd4() {
		return "member/searchPwd4";
	}
	
	
	// 암호화 처리 일반 회원가입_진교
		@RequestMapping(value="joinClient.do", method=RequestMethod.POST)
		public String memberInsert(Client c, Model model,
									@RequestParam("address1") String address1,
									@RequestParam("address2") String address2) {
			System.out.println(c);
			
			
			// 비밀번호 암호화
			String encPwd = bcryptPasswordEncoder.encode(c.getUserPwd());
			
			System.out.println(encPwd);
		
			c.setUserPwd(encPwd);
			
			c.setAddress(address1 + "," + address2);
			
			int result = mService.joinClient(c);
			
			if(result > 0) {
				return "home";				
			}else {
				throw new MainMemberException("회원 가입 실패!");
			}
		}
	
		// 암호화 처리 로그인_진교
		@RequestMapping(value="memberLogin.do", method=RequestMethod.POST)
		public String memberLogin(Client c, DrClient d, Model model, @RequestParam("check") String check) {
			
//			System.out.println(check);
			
			if(check.equals("client")) {
				Client loginClient = mService.loginClient(c);
				
				System.out.println("암호화 처리 된 DB일반회원 : " + loginClient);
				
				if(bcryptPasswordEncoder.matches(c.getUserPwd(), loginClient.getUserPwd())) {
					model.addAttribute("loginUser",loginClient);
					return "home";
				}else {
					throw new MainMemberException("일반 회원 로그인 실패!");
				}
			}else if(check.equals("drClient")) {
				DrClient loginDoctor = mService.loginDoctor(d);
				
				System.out.println("암호화 처리 된 DB의사회원 : " + loginDoctor);
				
				if(bcryptPasswordEncoder.matches(d.getUserPwd(), loginDoctor.getUserPwd())) {
					model.addAttribute("loginUser",loginDoctor);
					return "home";
				}else {
					throw new MainMemberException("의사 회원 로그인 실패!");
					
				}
			}
			return "home";
		}
		
	
}
