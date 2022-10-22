package com.assetcoach.main.accountManager.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.assetcoach.main.accountManager.dto.BankDto;

@Repository
public class AccountManageDaoImpl implements AccountManageDao{
	@Autowired SqlSessionTemplate SqlSessionTemplate;

	@Override
	public void addBankAccount(BankDto bankDto) throws Exception {
		SqlSessionTemplate.insert("accountManageMapper.addBankAccount",bankDto);
		System.out.println("temp check insert bank Table");
	}
}
