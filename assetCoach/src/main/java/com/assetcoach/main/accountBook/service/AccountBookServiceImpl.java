package com.assetcoach.main.accountBook.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.assetcoach.main.accountBook.dao.AccountBookDao;
import com.assetcoach.main.accountBook.dto.AccountBookDto;
import com.assetcoach.main.accountBook.dto.RecordOfTransactionsDto;

@Service("accountBookService")
public class AccountBookServiceImpl implements AccountBookService{

	@Inject AccountBookDao accountBookDao;

	@Override
	public void manageTheRecordOfTransactions(AccountBookDto accountBookDto) throws Exception {
		accountBookDao.manageTheRecordOfTransactions(accountBookDto);	
	}

	@Override
	public void addRecordDepositAndWithdrawal(RecordOfTransactionsDto recordOfTransactionsDto) {
		accountBookDao.addRecordDepositAndWithdrawal(recordOfTransactionsDto);
	}

	@Override
	public List<RecordOfTransactionsDto> listOfRecordOfTransaction(int userIdx){
		return accountBookDao.listOfRecordOfTransaction(userIdx);
	}

	@Override
	public void deleteRecordDepositAndWithdrawal(int recordOfTransactionsIdx) {
		accountBookDao.deleteRecordDepositAndWithdrawal(recordOfTransactionsIdx);
	}
	
}
