package com.kh.landocProject.askDr.model.dao;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.askDr.model.vo.AskDrBoard;
import com.kh.landocProject.askDr.model.vo.AskDrBoardPagination;

@Repository
public class AskDrDAO {

	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;
	
	public int selectAskDrBoardCount(int categoryNo) {
		return sqlSessionTemplate.selectOne("askDr.selectAskDrBoardCount", categoryNo);
	}

	public ArrayList<AskDrBoard> selectAskDrBoard(int categoryNo, AskDrBoardPagination page) {
		int offset = (page.getCurrentPage() - 1) * page.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, page.getBoardLimit());
		return (ArrayList)sqlSessionTemplate.selectList("askDr.selectAskDrBoard", categoryNo, rowBounds);
	}
}