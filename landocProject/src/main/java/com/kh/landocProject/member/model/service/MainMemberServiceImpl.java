package com.kh.landocProject.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.member.model.dao.MainMemberDao;
import com.kh.landocProject.member.model.vo.Client;
import com.kh.landocProject.member.model.vo.DrClient;
import com.kh.landocProject.member.model.vo.DrhpPhoto;

@Service("mService")
public class MainMemberServiceImpl implements MainMemberService{

	@Autowired
	MainMemberDao mDao;
	// 일반 회원가입
	@Override
	public int joinClient(Client c) {
		
		return mDao.joinClient(c);
	}
	
	// 일반회원 로그인
	@Override
	public Client loginClient(Client c) {

		return mDao.loginClient(c);
	}

	// 의사회원 로그인
	@Override
	public DrClient loginDoctor(DrClient d) {

		return mDao.loginDoctor(d);
	}

	// 일반회원 아이디 찾기
	@Override
	public Client searchIdClient(Client c) {
		
		return mDao.searchClient(c);
	}

	// 의사회원 아이디 찾기
	@Override
	public DrClient searchIdDoctor(DrClient d) {
		
		return mDao.searchDoctor(d);
	}
	
	// 의사 회원가입
	@Override
	public int joinDrClient(DrClient d) {
		
		return mDao.joinDrClient(d);
	}


	


	
}
