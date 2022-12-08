package com.assetcoach.main.accountManager.dto;

public class AccountDto {
	private int accountIdx;
	private int userIdx; 			// , user_idx integer not null
	private int bankIdx; 			//金融機関の名前 , bank_idx integer
	private int bankBranchIdx;		//金融機関の支店名, bank_branch_idx integer
	private String bankName;
	private String bankBranchName;
	private double holdingSum;
	private String accountNumber;	//口座番号, account_number character varying(100)
	private String familyName;		//口座の姓, family_name character varying(100)
	private String lastName;		//口座の名, last_name character varying(100)
	private String nickname;		//口座の別名, nickname character varying(100)
	private String memo;			//口座説明, memo character varying(100)

	public int getAccountIdx() {
		return accountIdx;
	}
	public void setAccountIdx(int accountIdx) {
		this.accountIdx = accountIdx;
	}
	public double getHoldingSum() {
		return holdingSum;
	}
	public void setHoldingSum(double holdingSum) {
		this.holdingSum = holdingSum;
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
	public int getUserIdx() {
		return userIdx;
	}
	public void setUserIdx(int userIdx) {
		this.userIdx = userIdx;
	}
	public int getBankIdx() {
		return bankIdx;
	}
	public void setBankIdx(int bankIdx) {
		this.bankIdx = bankIdx;
	}
	public int getBankBranchIdx() {
		return bankBranchIdx;
	}
	public void setBankBranchIdx(int bankBranchIdx) {
		this.bankBranchIdx = bankBranchIdx;
	}
	public String getAccountNumber() {
		return accountNumber;
	}
	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}
	public String getFamilyName() {
		return familyName;
	}
	public void setFamilyName(String familyName) {
		this.familyName = familyName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	
}
