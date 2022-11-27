package com.assetcoach.main.accountManager.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.assetcoach.main.accountManager.dto.AccountDto;
import com.assetcoach.main.accountManager.dto.BankDto;

@Repository
public class AccountManageDaoImpl implements AccountManageDao{
	@Autowired SqlSessionTemplate SqlSessionTemplate;

	@Override
	public List<AccountDto> bankAccountOfUser(int userIdx) throws Exception {
		return SqlSessionTemplate.selectList("accountManageMapper.bankAccountOfUser",userIdx);
	}

	
	@Override
	public List<BankDto> bankListOfSelect() {
		return SqlSessionTemplate.selectList("bankMapper.bankListOfSelect");
	}
	
	@Override
	public void addUserBankAccount(AccountDto accountDto) throws Exception {
		SqlSessionTemplate.insert("accountManageMapper.addUserBankAccount",accountDto);
		System.out.println("temp check insert bank Table");
	}

}
