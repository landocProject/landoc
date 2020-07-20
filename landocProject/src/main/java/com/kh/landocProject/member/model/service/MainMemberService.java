package com.kh.landocProject.member.model.service;

import com.kh.landocProject.member.model.vo.Client;
import com.kh.landocProject.member.model.vo.DrClient;
import com.kh.landocProject.member.model.vo.DrhpPhoto;

public interface MainMemberService {

	int joinClient(Client c);

	Client loginClient(Client c);

	DrClient loginDoctor(DrClient d);

	Client searchIdClient(Client c);

	DrClient searchIdDoctor(DrClient d);

	int joinDrClient(DrClient d);




	

}
