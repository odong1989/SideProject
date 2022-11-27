package com.assetcoach.main.accountManager.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.assetcoach.main.accountManager.dao.AccountManageDao;
import com.assetcoach.main.accountManager.dto.AccountDto;
import com.assetcoach.main.accountManager.dto.BankDto;

@Service("AccountManageService")
public class AccountManageServiceImpl implements AccountManageService{

	@Inject AccountManageDao accountManageDao;

	@Override
	public List<AccountDto> bankAccountOfUser(int userIdx) throws Exception {
		return accountManageDao.bankAccountOfUser(userIdx) ;
	}
	
	@Override
	public List<BankDto> bankListOfSelect() {
		return accountManageDao.bankListOfSelect();
	}
	
	@Override
	public void addUserBankAccount(AccountDto accountDto) throws Exception {
		accountManageDao.addUserBankAccount(accountDto);
	}

}
