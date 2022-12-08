package com.assetcoach.main.accountBook.dto;

public class AccountBookDto {

	//DB table name : bank
	private int bankIdx;
	private int branchIdx;
	//private String nation;
	//private String name;
	//private String branchName;
	
	//DB table name : record_of_transactions
	private int accountIdx; 
	private int accountNumber;
	private int userIdx; 	
	private String bankName;
	private String bankBranchName;
	
	private String typeTheImcomeOrPay;
	private String accuntType;		
	private String currencyType;	
	private String purchase;
	private String dateOfTraiding; 
	private String contents;
	public int getBankIdx() {
		return bankIdx;
	}
	public void setBankIdx(int bankIdx) {
		this.bankIdx = bankIdx;
	}
	public int getBranchIdx() {
		return branchIdx;
	}
	public void setBranchIdx(int branchIdx) {
		this.branchIdx = branchIdx;
	}
	public int getAccountIdx() {
		return accountIdx;
	}
	public void setAccountIdx(int accountIdx) {
		this.accountIdx = accountIdx;
	}
	public int getAccountNumber() {
		return accountNumber;
	}
	public void setAccountNumber(int accountNumber) {
		this.accountNumber = accountNumber;
	}
	public int getUserIdx() {
		return userIdx;
	}
	public void setUserIdx(int userIdx) {
		this.userIdx = userIdx;
	}
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public String getBankBranchName() {
		return bankBranchName;
	}
	public void setBankBranchName(String bankBranchName) {
		this.bankBranchName = bankBranchName;
	}
	public String getTypeTheImcomeOrPay() {
		return typeTheImcomeOrPay;
	}
	public void setTypeTheImcomeOrPay(String typeTheImcomeOrPay) {
		this.typeTheImcomeOrPay = typeTheImcomeOrPay;
	}
	public String getAccuntType() {
		return accuntType;
	}
	public void setAccuntType(String accuntType) {
		this.accuntType = accuntType;
	}
	public String getCurrencyType() {
		return currencyType;
	}
	public void setCurrencyType(String currencyType) {
		this.currencyType = currencyType;
	}
	public String getPurchase() {
		return purchase;
	}
	public void setPurchase(String purchase) {
		this.purchase = purchase;
	}
	public String getDateOfTraiding() {
		return dateOfTraiding;
	}
	public void setDateOfTraiding(String dateOfTraiding) {
		this.dateOfTraiding = dateOfTraiding;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
		
}
