package com.assetcoach.main.accountManager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.assetcoach.main.accountBook.dto.AccountBookDto;
import com.assetcoach.main.accountManager.dto.BankDto;

@Controller
@RequestMapping("/accountManage")
public class AccountManageController {

	@RequestMapping(value = "/accountList", method = RequestMethod.GET)
	public String accessAccountList() {
		System.out.println("AccountManageController-accountList");
		return "/accountManage/accountList";
	}
	
	@RequestMapping(value="addAccount", method= RequestMethod.POST)
	public String addAccount(BankDto bankDto) throws Exception {
		System.out.println("addAccount");
		return "/accountManage/accountList";
	}
	
}
