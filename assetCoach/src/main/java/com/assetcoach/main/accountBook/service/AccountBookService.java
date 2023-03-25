package com.assetcoach.main.accountBook.service;

import java.util.List;


import com.assetcoach.main.accountBook.dto.AccountBookDto;
import com.assetcoach.main.accountBook.dto.RecordOfTransactionsDto;

public interface AccountBookService {
	public void manageTheRecordOfTransactions(AccountBookDto accountBookDto) throws Exception;
	public void addRecordDepositAndWithdrawal(RecordOfTransactionsDto recordOfTransactionsDto);
	public void deleteRecordDepositAndWithdrawal(int recordOfTransactionsIdx);
	public List<RecordOfTransactionsDto> listOfRecordOfTransaction(int userIdx);
}
