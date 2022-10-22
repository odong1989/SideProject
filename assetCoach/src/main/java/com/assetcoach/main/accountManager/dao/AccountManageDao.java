package com.assetcoach.main.accountManager.dao;

import com.assetcoach.main.accountManager.dto.BankDto;

public interface AccountManageDao {
	public void addBankAccount(BankDto bankDto) throws Exception;
}
