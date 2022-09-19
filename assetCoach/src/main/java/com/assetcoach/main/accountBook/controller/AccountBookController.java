package com.assetcoach.main.accountBook.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/accountBook")
public class AccountBookController {
	
	@RequestMapping(value = "/recordDepositAndWithdrawal", method = RequestMethod.GET)
	public String accessLoginForm() {
		System.out.println("AccountBookController-recordDepositAndWithdrawal");
		return "/accountBook/recordDepositAndWithdrawal";
	}
	
}
