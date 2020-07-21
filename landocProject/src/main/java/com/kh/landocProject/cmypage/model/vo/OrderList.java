package com.kh.landocProject.cmypage.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class OrderList implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -8680240868675734917L;
	private int orderNo;
	private Date orderDate;
	private String amountPrice;
	private String paymentWay;
	private int usePoint;
	private String cNo;
	private int pdNo;
	private int opCount;
	private String pdName;
	private String tumbnail;
	private int oCode;
	private String oName;
	private String discountPrice;
	private String cName;
	private int cPostCode;
	private String cAddress;
	private String cPhone;
	
	
	public OrderList() {
		super();
	}

	

	public OrderList(int orderNo, Date orderDate, String amountPrice, String cNo, int pdNo, String pdName,
			String tumbnail, int oCode, String oName) {
		this.orderNo = orderNo;
		this.orderDate = orderDate;
		this.amountPrice = amountPrice;
		this.cNo = cNo;
		this.pdNo = pdNo;
		this.pdName = pdName;
		this.tumbnail = tumbnail;
		this.oCode = oCode;
		this.oName = oName;
	}


	

	public OrderList(int orderNo, Date orderDate, String amountPrice, String paymentWay, int usePoint, String cNo,
			int pdNo, int opCount, String pdName, String tumbnail, int oCode, String oName, String discountPrice,
			String cName, int cPostCode, String cAddress, String cPhone) {
		super();
		this.orderNo = orderNo;
		this.orderDate = orderDate;
		this.amountPrice = amountPrice;
		this.paymentWay = paymentWay;
		this.usePoint = usePoint;
		this.cNo = cNo;
		this.pdNo = pdNo;
		this.opCount = opCount;
		this.pdName = pdName;
		this.tumbnail = tumbnail;
		this.oCode = oCode;
		this.oName = oName;
		this.discountPrice = discountPrice;
		this.cName = cName;
		this.cPostCode = cPostCode;
		this.cAddress = cAddress;
		this.cPhone = cPhone;
	}



	public int getOrderNo() {
		return orderNo;
	}



	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}



	public Date getOrderDate() {
		return orderDate;
	}



	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}



	public String getAmountPrice() {
		return amountPrice;
	}



	public void setAmountPrice(String amountPrice) {
		this.amountPrice = amountPrice;
	}



	public String getPaymentWay() {
		return paymentWay;
	}



	public void setPaymentWay(String paymentWay) {
		this.paymentWay = paymentWay;
	}



	public int getUsePoint() {
		return usePoint;
	}



	public void setUsePoint(int usePoint) {
		this.usePoint = usePoint;
	}



	public String getcNo() {
		return cNo;
	}



	public void setcNo(String cNo) {
		this.cNo = cNo;
	}



	public int getPdNo() {
		return pdNo;
	}



	public void setPdNo(int pdNo) {
		this.pdNo = pdNo;
	}



	public int getOpCount() {
		return opCount;
	}



	public void setOpCount(int opCount) {
		this.opCount = opCount;
	}



	public String getPdName() {
		return pdName;
	}



	public void setPdName(String pdName) {
		this.pdName = pdName;
	}



	public String getTumbnail() {
		return tumbnail;
	}



	public void setTumbnail(String tumbnail) {
		this.tumbnail = tumbnail;
	}



	public int getoCode() {
		return oCode;
	}



	public void setoCode(int oCode) {
		this.oCode = oCode;
	}



	public String getoName() {
		return oName;
	}



	public void setoName(String oName) {
		this.oName = oName;
	}



	public String getDiscountPrice() {
		return discountPrice;
	}



	public void setDiscountPrice(String discountPrice) {
		this.discountPrice = discountPrice;
	}



	public String getcName() {
		return cName;
	}



	public void setcName(String cName) {
		this.cName = cName;
	}



	public int getcPostCode() {
		return cPostCode;
	}



	public void setcPostCode(int cPostCode) {
		this.cPostCode = cPostCode;
	}



	public String getcAddress() {
		return cAddress;
	}



	public void setcAddress(String cAddress) {
		this.cAddress = cAddress;
	}



	public String getcPhone() {
		return cPhone;
	}



	public void setcPhone(String cPhone) {
		this.cPhone = cPhone;
	}



	public static long getSerialversionuid() {
		return serialVersionUID;
	}



	@Override
	public String toString() {
		return "OrderList [orderNo=" + orderNo + ", orderDate=" + orderDate + ", amountPrice=" + amountPrice
				+ ", paymentWay=" + paymentWay + ", usePoint=" + usePoint + ", cNo=" + cNo + ", pdNo=" + pdNo
				+ ", opCount=" + opCount + ", pdName=" + pdName + ", tumbnail=" + tumbnail + ", oCode=" + oCode
				+ ", oName=" + oName + ", discountPrice=" + discountPrice + ", cName=" + cName + ", cPostCode="
				+ cPostCode + ", cAddress=" + cAddress + ", cPhone=" + cPhone + "]";
	}



	
	
	
}
