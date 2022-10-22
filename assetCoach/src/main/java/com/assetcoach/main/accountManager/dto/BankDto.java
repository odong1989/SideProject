package com.assetcoach.main.accountManager.dto;

public class BankDto {
	private String userIdx;

	private String bankIdx;		//bankIdx integer not null
	private String branchIdx;	//, branchIdx integer not null
	private String nation;	    //, nation character(1)
	private String bankName;	//, name character varying(100)
	private String branchName;	//, branch_name character varying(100)
			  					//, logo character(1)

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
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
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
	
}
