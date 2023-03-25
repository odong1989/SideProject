package com.assetcoach.main.accountBook.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.assetcoach.main.accountBook.dto.AccountBookDto;
import com.assetcoach.main.accountBook.dto.RecordOfTransactionsDto;

@Repository
public class AccountBookDaoImpl implements AccountBookDao{

	@Autowired SqlSessionTemplate SqlSessionTemplate;
	
	@Override
	public void manageTheRecordOfTransactions(AccountBookDto accountBookDto) throws Exception {
		SqlSessionTemplate.insert("accountBookMapper.manageTheRecordOfTransactions",accountBookDto);
		System.out.println("temp check insert");
	}

	@Override
	public void addRecordDepositAndWithdrawal(RecordOfTransactionsDto recordOfTransactionsDto) {
		SqlSessionTemplate.insert("recordOfTransactionMapper.addRecordDepositAndWithdrawal",recordOfTransactionsDto);
	}

	@Override
	public List<RecordOfTransactionsDto> listOfRecordOfTransaction(int userIdx) {
		return SqlSessionTemplate.selectList("recordOfTransactionMapper.listOfRecordOfTransaction",userIdx);
	}

	@Override
	public void deleteRecordDepositAndWithdrawal(int recordOfTransactionsIdx) {
//		SqlSessionTemplate.delete(String.valueOf(recordOfTransactionsIdx) );
		SqlSessionTemplate.delete("recordOfTransactionMapper.deleteRecordDepositAndWithdrawal", recordOfTransactionsIdx);
	}
	
}
