package com.assetcoach.main.accountManager.dto;

public class accountDto {

	//account Table
	private int accountIdx;			//account_idx integer not null
	private int userIdx;			//, user_idx integer not null
	private int dailryIdx;			//, dailry_idx integer
	private String assetType; 		//, asset_type character(1)
	private String accountNumber;	//, account_number character varying(100)
	private String familyName;		//, family_name character varying(100)
	private String lastName;		//, last_name character varying(100)
	private String nickname;		//, nickname character varying(100)
	private String memo;			//, memo character varying(100)
	private long holdingSum; 		//, holding_sum numeric(20, 5)
	
	//bank Table
	private int bankIdx; 			//, bank_idx integer
	private String nation;			//, nation character(1)
	private String name; 		//銀行の名	//, name character varying(100)
	private String branchName; 		//, branch_name character varying(100)
	private String logo;//, logo character(1)
	public int getAccountIdx() {
		return accountIdx;
	}
	public void setAccountIdx(int accountIdx) {
		this.accountIdx = accountIdx;
	}
	public int getUserIdx() {
		return userIdx;
	}
	public void setUserIdx(int userIdx) {
		this.userIdx = userIdx;
	}
	public int getDailryIdx() {
		return dailryIdx;
	}
	public void setDailryIdx(int dailryIdx) {
		this.dailryIdx = dailryIdx;
	}
	public String getAssetType() {
		return assetType;
	}
	public void setAssetType(String assetType) {
		this.assetType = assetType;
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
	public long getHoldingSum() {
		return holdingSum;
	}
	public void setHoldingSum(long holdingSum) {
		this.holdingSum = holdingSum;
	}
	public int getBankIdx() {
		return bankIdx;
	}
	public void setBankIdx(int bankIdx) {
		this.bankIdx = bankIdx;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBranchName() {
		return branchName;
	}
	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	
}
