package com.assetcoach.main.accountManager.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.assetcoach.main.accountManager.dao.AccountManageDao;
import com.assetcoach.main.accountManager.dto.BankDto;

@Service("AccountManageService")
public class AccountManageServiceImpl implements AccountManageService{

	@Inject AccountManageDao accountManageDao;
	
	@Override
	public void addBankAccount(BankDto bankDto) throws Exception {
		accountManageDao.addBankAccount(bankDto);
	}

}
