package com.assetcoach.main.accountBook.service;

import com.assetcoach.main.accountBook.dto.AccountBookDto;

public interface accountBookService {
	public void manageTheRecordOfTransactions(AccountBookDto accountBookDto) throws Exception;
}
