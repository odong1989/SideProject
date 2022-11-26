package com.assetcoach.main.accountManager.service;

import java.util.List;

import com.assetcoach.main.accountManager.dto.AccountDto;
import com.assetcoach.main.accountManager.dto.BankDto;

public interface AccountManageService {
	public List<BankDto> bankListOfSelect();
	public void addUserBankAccount(AccountDto accountDto) throws Exception;
}
