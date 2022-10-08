package com.assetcoach.main.accountBook.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.assetcoach.main.accountBook.dao.AccountBookDao;
import com.assetcoach.main.accountBook.dto.AccountBookDto;

@Service("accountBookService")
public class AccountBookServiceImpl implements accountBookService{

	@Inject AccountBookDao accountBookDao;

	@Override
	public void manageTheRecordOfTransactions(AccountBookDto accountBookDto) throws Exception {
		accountBookDao.manageTheRecordOfTransactions(accountBookDto);	
	}

	
	
}
