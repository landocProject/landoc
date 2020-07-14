package com.kh.landocProject.admin.hospital.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HospitalController {

	@RequestMapping("hospitalManage.do")
	 public String hospitalManage() {
	      return "admin/hospital/hospitalManage";
	   }
	
	
	@RequestMapping("hospitalDetail.do")
	 public String hospitalDetail() {
	      return "admin/hospital/hospitalDetail";
	   }
	
	
}
