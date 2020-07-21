package com.kh.landocProject.askDr.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class AskDrBoard implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -5916975588710992341L;
	private int rNo;					//rowNo
	private int bNo;					//AD_NO
	private String bTitle;			//AD_TITLE
	private String cno;				//C_NO
	private String nickname;	
	private Date submitDate;	//AD_SUBMITDATE
	private int height;				//AD_HEIGHT
	private int weight;				//AD_WEIGHT
	private int age;					//AD_AGE
	private String gender;		//AD_GENDER
	private String caution;		//AD_CAUTION
	private String symptoms;	//AD_SYMPTOM
	private int categoryCode;	//HP_CATE_CODE
	
	public AskDrBoard() {
	}

	public AskDrBoard(int rNo, int bNo, String bTitle, String cno, String nickname, Date submitDate, int height,
			int weight, int age, String gender, String caution, String symptoms, int categoryCode) {
		this.rNo = rNo;
		this.bNo = bNo;
		this.bTitle = bTitle;
		this.cno = cno;
		this.nickname = nickname;
		this.submitDate = submitDate;
		this.height = height;
		this.weight = weight;
		this.age = age;
		this.gender = gender;
		this.caution = caution;
		this.symptoms = symptoms;
		this.categoryCode = categoryCode;
	}

	public int getrNo() {
		return rNo;
	}

	public void setrNo(int rNo) {
		this.rNo = rNo;
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

	public String getCno() {
		return cno;
	}

	public void setCno(String cno) {
		this.cno = cno;
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

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getCaution() {
		return caution;
	}

	public void setCaution(String caution) {
		this.caution = caution;
	}

	public String getSymptoms() {
		return symptoms;
	}

	public void setSymptoms(String symptoms) {
		this.symptoms = symptoms;
	}

	public int getCategoryCode() {
		return categoryCode;
	}

	public void setCategoryCode(int categoryCode) {
		this.categoryCode = categoryCode;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "AskDrBoard [rNo=" + rNo + ", bNo=" + bNo + ", bTitle=" + bTitle + ", cno=" + cno + ", nickname="
				+ nickname + ", submitDate=" + submitDate + ", height=" + height + ", weight=" + weight + ", age=" + age
				+ ", gender=" + gender + ", caution=" + caution + ", symptoms=" + symptoms + ", categoryCode="
				+ categoryCode + "]";
	}
	
}
