package com.kh.landocProject.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.member.model.vo.Client;
import com.kh.landocProject.member.model.vo.DrClient;
import com.kh.landocProject.member.model.vo.DrhpPhoto;

@Repository("mDao")
public class MainMemberDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 일반 회원가입_진교
	public int joinClient(Client c) {
//		System.out.println(c);
		return sqlSessionTemplate.insert("memberMapper.joinClient", c);
	}
	// 일반회원 로그인
	public Client loginClient(Client c) {
	
		return sqlSessionTemplate.selectOne("memberMapper.loginClient", c);
	}
	// 의사회원 로그인
	public DrClient loginDoctor(DrClient d) {
	
		return sqlSessionTemplate.selectOne("memberMapper.loginDrClient", d);
	}
	// 일반회원 아이디 찾기
	public Client searchClient(Client c) {

		return sqlSessionTemplate.selectOne("memberMapper.searchIdClient", c);
	}
	// 의사회원 아이디 찾기
	public DrClient searchDoctor(DrClient d) {

		return sqlSessionTemplate.selectOne("memberMapper.searchIdDrClient", d);
	}
	// 의사 회원가입
	public int joinDrClient(DrClient d) {
		
		return sqlSessionTemplate.insert("memberMapper.joinDrClient", d);
	}
	
	// 의사 회원가입_의사 번호 찾기_진교
	public DrClient joinDrClient2(DrClient d) {
		
		return sqlSessionTemplate.selectOne("memberMapper.joinDrClient2", d);
	}
	// 파일제출(재직,사업자)
	public int insertFile1(DrhpPhoto dhp) {
		
		return sqlSessionTemplate.insert("memberMapper.insertFile1", dhp);
	}
	// 파일제출(신분증)
	public int insertFile2(DrhpPhoto dhp) {
	
		return sqlSessionTemplate.insert("memberMapper.insertFile2", dhp);
	}
	// 파일제출(의사면허증)
	public int insertFile3(DrhpPhoto dhp) {

		return sqlSessionTemplate.insert("memberMapper.insertFile3", dhp);
	}

	



	

	

}
