package com.kh.landocProject.cmypage.model.service;

import java.util.ArrayList;

import com.kh.landocProject.cmypage.model.vo.LikeHp;
import com.kh.landocProject.cmypage.model.vo.PdReview;

public interface cMypageService {

	ArrayList<LikeHp> selectList(String cNo);

	int selectCount(String cNo);

	ArrayList<PdReview> selectPdReviewList(String cNo);



}
