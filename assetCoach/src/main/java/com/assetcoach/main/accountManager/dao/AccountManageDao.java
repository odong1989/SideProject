package com.assetcoach.main.accountManager.dao;

import java.util.List;

import com.assetcoach.main.accountManager.dto.AccountDto;
import com.assetcoach.main.accountManager.dto.BankDto;

public interface AccountManageDao {

	public List<AccountDto> bankAccountOfUser(int userIdx)throws Exception;
	public List<BankDto> bankListOfSelect();
	public void addUserBankAccount(AccountDto accountDto) throws Exception;
}
