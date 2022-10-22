package com.assetcoach.main.accountManager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.assetcoach.main.accountManager.dto.BankDto;
import com.assetcoach.main.accountManager.service.AccountManageService;

@Controller
@RequestMapping("/accountManage")
public class AccountManageController {
	
	@Autowired AccountManageService accountManageService;
	
	@RequestMapping(value = "/accountList", method = RequestMethod.GET)
	public String accessAccountList() {
		System.out.println("AccountManageController-accountList");
		return "/accountManage/accountList";
	}
	
	@RequestMapping(value="/addBankAccount", method= RequestMethod.POST)
	public String addAccount(BankDto bankDto) throws Exception {
		System.out.println("addBankAccount");
		accountManageService.addBankAccount(bankDto);
		return "/accountManage/accountList";
	}
	
}
