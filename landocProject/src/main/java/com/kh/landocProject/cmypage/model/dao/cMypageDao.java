package com.kh.landocProject.cmypage.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.cmypage.model.vo.LikeHp;

@Repository("cmDao")
public class cMypageDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public ArrayList<LikeHp> selectList(String cNo) {
		
		return (ArrayList)sqlSessionTemplate.selectList("likeHp.likeHpList",cNo);
	}

}
