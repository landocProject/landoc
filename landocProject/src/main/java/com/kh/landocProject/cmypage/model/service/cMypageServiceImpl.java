package com.kh.landocProject.cmypage.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.cmypage.model.dao.cMypageDao;
import com.kh.landocProject.cmypage.model.vo.LikeHp;

@Service("cmService")
public class cMypageServiceImpl implements cMypageService {

	@Autowired
	cMypageDao cmDao;
	
	@Override
	public ArrayList<LikeHp> selectList(String cNo) {
	
		return cmDao.selectList(cNo);
	}

}
