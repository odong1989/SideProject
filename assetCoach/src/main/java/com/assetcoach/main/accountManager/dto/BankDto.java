package com.assetcoach.main.accountManager.dto;

public class BankDto {
	private String userIdx;

	private String bankIdx;		
	private String branchIdx;
	private String bankNation;	
	private String bankName;	
	private String branchName;
	
	public String getBankIdx() {
		return bankIdx;
	}
	public String getUserIdx() {
		return userIdx;
	}
	
	public void setUserIdx(String userIdx) {
		this.userIdx = userIdx;
	}
	public void setBankIdx(String bankIdx) {
		this.bankIdx = bankIdx;
	}
	public String getBranchIdx() {
		return branchIdx;
	}
	public void setBranchIdx(String branchIdx) {
		this.branchIdx = branchIdx;
	}

	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public String getBranchName() {
		return branchName;
	}
	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}
	public String getBankNation() {
		return bankNation;
	}
	public void setBankNation(String bankNation) {
		this.bankNation = bankNation;
	}
	
}
