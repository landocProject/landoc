package com.kh.landocProject.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.member.model.dao.MainMemberDao;
import com.kh.landocProject.member.model.vo.Client;

@Service("mService")
public class MainMemberServiceImpl implements MainMemberService{

	@Autowired
	MainMemberDao mDao;

	@Override
	public int joinClient(Client c) {
		
		return mDao.joinClient(c);
	}

	
}
