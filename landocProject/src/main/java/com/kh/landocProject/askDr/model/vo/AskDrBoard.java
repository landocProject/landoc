package com.kh.landocProject.askDr.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class AskDrBoard implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -5916975588710992341L;
	private int bNo;
	private String bTitle;
	private String nickname;
	private Date submitDate;
	public AskDrBoard() {
	}
	public AskDrBoard(int bNo, String bTitle, String nickname, Date submitDate) {
		this.bNo = bNo;
		this.bTitle = bTitle;
		this.nickname = nickname;
		this.submitDate = submitDate;
	}
	public int getbNo() {
		return bNo;
	}
	public void setbNo(int bNo) {
		this.bNo = bNo;
	}
	public String getbTitle() {
		return bTitle;
	}
	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public Date getSubmitDate() {
		return submitDate;
	}
	public void setSubmitDate(Date submitDate) {
		this.submitDate = submitDate;
	}
	@Override
	public String toString() {
		return "AskDrBoard [bNo=" + bNo + ", bTitle=" + bTitle + ", nickname=" + nickname + ", submitDate=" + submitDate
				+ "]";
	}
	
}
