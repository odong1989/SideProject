package com.assetcoach.main.accountBook.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.assetcoach.main.accountBook.dto.AccountBookDto;

@Repository
public class AccountBookDaoImpl implements AccountBookDao{

	@Autowired SqlSessionTemplate SqlSessionTemplate;
	
	@Override
	public void manageTheRecordOfTransactions(AccountBookDto accountBookDto) throws Exception {
		//SqlSessionTemplate.insert("accountBookMapper.manageTheRecordOfTransactions",accountBookDto);
	}
	
}
