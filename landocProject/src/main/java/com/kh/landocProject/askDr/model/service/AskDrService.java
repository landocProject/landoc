package com.kh.landocProject.askDr.model.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kh.landocProject.askDr.model.vo.AskDrBoard;

public interface AskDrService {

	List<AskDrBoard> selectAskDrBoard(int categoryNo) throws Exception;

	int selectAskDrBoardCount(int categoryNo);
	
}
