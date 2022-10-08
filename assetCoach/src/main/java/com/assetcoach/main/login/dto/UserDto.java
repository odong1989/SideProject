package com.assetcoach.main.login.dto;

public class UserDto {
	private int   	userIdx;				//user_idx integer not null
	private String 	userEmail;				//, user_email character(64) not null
	private String 	userPassword;				//, password character(64) not null
	private String 	familyName;				//, family_name character varying(100) not null
	private String 	lastName;				//, last_name character varying(100) not null
	private String 	phoneNumber1;			//, phone_number1 character varying(50) not null
	private String 	phoneNumber2;			//, phone_number2 character varying(50)
	private String 	phoneNumber3;			//, phone_number3 character varying(50)
	private int		reportedCount;			//, reported_count integer default 0
	private String 	freezeFlag;				//, freeze_flag character(1) default '0'
	private String 	dateOfDormantStart;		//, date_of_dormant_start timestamp(6) without time zone default now() not null
	private String  dateOfDormantEnd;		//, date_of_dormant_end timestamp(6) without time zone default now() not null
	private String	dateOfMembershipStart;	//, date_of_membership_start timestamp(6) without time zone
	private String	dateOfMembershipEnd;	//, date_of_membership_end timestamp(6) without time zone
	private String 	typeOfMembership;		//, type_of_membership character(1) default '0' not null

	public int getUserIdx() {
		return userIdx;
	}
	public void setUserIdx(int userIdx) {
		this.userIdx = userIdx;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
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
	public String getPhoneNumber1() {
		return phoneNumber1;
	}
	public void setPhoneNumber1(String phoneNumber1) {
		this.phoneNumber1 = phoneNumber1;
	}
	public String getPhoneNumber2() {
		return phoneNumber2;
	}
	public void setPhoneNumber2(String phoneNumber2) {
		this.phoneNumber2 = phoneNumber2;
	}
	public String getPhoneNumber3() {
		return phoneNumber3;
	}
	public void setPhoneNumber3(String phoneNumber3) {
		this.phoneNumber3 = phoneNumber3;
	}
	public int getReportedCount() {
		return reportedCount;
	}
	public void setReportedCount(int reportedCount) {
		this.reportedCount = reportedCount;
	}
	public String getFreezeFlag() {
		return freezeFlag;
	}
	public void setFreezeFlag(String freezeFlag) {
		this.freezeFlag = freezeFlag;
	}
	public String getDateOfDormantStart() {
		return dateOfDormantStart;
	}
	public void setDateOfDormantStart(String dateOfDormantStart) {
		this.dateOfDormantStart = dateOfDormantStart;
	}
	public String getDateOfDormantEnd() {
		return dateOfDormantEnd;
	}
	public void setDateOfDormantEnd(String dateOfDormantEnd) {
		this.dateOfDormantEnd = dateOfDormantEnd;
	}
	public String getDateOfMembershipStart() {
		return dateOfMembershipStart;
	}
	public void setDateOfMembershipStart(String dateOfMembershipStart) {
		this.dateOfMembershipStart = dateOfMembershipStart;
	}
	public String getDateOfMembershipEnd() {
		return dateOfMembershipEnd;
	}
	public void setDateOfMembershipEnd(String dateOfMembershipEnd) {
		this.dateOfMembershipEnd = dateOfMembershipEnd;
	}
	public String getTypeOfMembership() {
		return typeOfMembership;
	}
	public void setTypeOfMembership(String typeOfMembership) {
		this.typeOfMembership = typeOfMembership;
	}
	
}
