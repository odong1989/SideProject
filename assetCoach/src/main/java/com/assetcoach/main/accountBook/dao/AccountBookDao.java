package com.assetcoach.main.accountBook.dao;

import com.assetcoach.main.accountBook.dto.AccountBookDto;

public interface AccountBookDao {
	public void manageTheRecordOfTransactions(AccountBookDto accountBookDto) throws Exception;
}
