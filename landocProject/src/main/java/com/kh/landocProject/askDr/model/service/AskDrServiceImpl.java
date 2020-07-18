package com.kh.landocProject.askDr.model.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kh.landocProject.askDr.model.dao.AskDrDAO;
import com.kh.landocProject.askDr.model.vo.AskDrBoard;

@Service
public class AskDrServiceImpl implements AskDrService {

	@Resource
	private AskDrDAO askDrDAO;

	@Override
	public List<AskDrBoard> selectAskDrBoard(int categoryNo) throws Exception {
		return askDrDAO.selectAskDrBoard(categoryNo);
	}
	
}
