package com.assetcoach.main.accountBook.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.assetcoach.main.accountBook.dto.AccountBookDto;
import com.assetcoach.main.accountBook.service.AccountBookService;
import com.assetcoach.main.accountBook.service.AccountBookServiceImpl;

@Controller
@RequestMapping("/accountBook")
public class AccountBookController {
	
	@Autowired AccountBookService accountBookService;
	
	@RequestMapping(value = "/recordDepositAndWithdrawal", method = RequestMethod.GET)
	public String accessLoginForm() {
		System.out.println("AccountBookController-recordDepositAndWithdrawal");
		return "/accountBook/recordDepositAndWithdrawal";
	}

	@RequestMapping(value="manageTheRecordOfTransactions", method= RequestMethod.POST)
	public String manageTheRecordOfTransactions(AccountBookDto accountBookDto) throws Exception {
		System.out.println("AccountBookController-manageTheRecordOfTransactions");
		accountBookService.manageTheRecordOfTransactions(accountBookDto);
		return "/accountBook/recordDepositAndWithdrawal";
	}

}
