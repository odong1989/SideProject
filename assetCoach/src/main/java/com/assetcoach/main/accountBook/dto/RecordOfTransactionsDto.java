package com.assetcoach.main.accountBook.dto;


public class RecordOfTransactionsDto {
	private int userIdx; 
	private int recordOfTransactionsIdx;
	private int accountIdx;					//, account_idx integer
	private int accountNumber;				//, account_number character varying(100)
	private String typeOfTransactions;			//, type_of_transactions character(3)
	private String detailTypeOfTransactions;	//, detail_type_of_transactions character(7)
	private String nameOfTransaction;			//, name_of_transaction character(50)
	private String currencyType;				//, currency_type character(3)
	private double purchase;				  	//, purchase numeric(18)
	private String dateOfTraiding; 				//, date_of_traiding timestamp(6) without time zone
	private String contents;					//, contents character varying(300)
	
	public int getRecordOfTransactionsIdx() {
		return recordOfTransactionsIdx;
	}
	public void setRecordOfTransactionsIdx(int recordOfTransactionsIdx) {
		this.recordOfTransactionsIdx = recordOfTransactionsIdx;
	}
	public int getUserIdx() {
		return userIdx;
	}
	public void setUserIdx(int userIdx) {
		this.userIdx = userIdx;
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
	public String getTypeOfTransactions() {
		return typeOfTransactions;
	}
	public void setTypeOfTransactions(String typeOfTransactions) {
		this.typeOfTransactions = typeOfTransactions;
	}
	public String getDetailTypeOfTransactions() {
		return detailTypeOfTransactions;
	}
	public void setDetailTypeOfTransactions(String detailTypeOfTransactions) {
		this.detailTypeOfTransactions = detailTypeOfTransactions;
	}
	public String getNameOfTransaction() {
		return nameOfTransaction;
	}
	public void setNameOfTransaction(String nameOfTransaction) {
		this.nameOfTransaction = nameOfTransaction;
	}
	public String getCurrencyType() {
		return currencyType;
	}
	public void setCurrencyType(String currencyType) {
		this.currencyType = currencyType;
	}
	public double getPurchase() {
		return purchase;
	}
	public void setPurchase(double purchase) {
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
