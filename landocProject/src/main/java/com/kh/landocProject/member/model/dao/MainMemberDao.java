package com.kh.landocProject.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.member.model.vo.Client;

@Repository("mDao")
public class MainMemberDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 일반 회원가입_진교
	public int joinClient(Client c) {
		System.out.println(c);
		return sqlSessionTemplate.insert("memberMapper.joinClient", c);
	}

	

}
