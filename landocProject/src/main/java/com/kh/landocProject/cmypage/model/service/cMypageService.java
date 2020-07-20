package com.kh.landocProject.cmypage.model.service;

import java.util.ArrayList;

import com.kh.landocProject.cmypage.model.vo.LikeHp;

public interface cMypageService {

	ArrayList<LikeHp> selectList(String cNo);

}
