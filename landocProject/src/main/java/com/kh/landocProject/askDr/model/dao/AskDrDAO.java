package com.kh.landocProject.askDr.model.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.askDr.model.vo.AskDrBoard;

@Repository
public class AskDrDAO {

	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;

	public List<AskDrBoard> selectAskDrBoard(int categoryNo) {
		return sqlSessionTemplate.selectList("askDr.selectAskDrBoard", categoryNo);
	}

	public int selectAskDrBoardCount(int categoryNo) {
		return sqlSessionTemplate.selectOne("askDr.selectAskDrBoardCount", categoryNo);
	}
	
}