package com.assetcoach.main.accountManager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/accountManage")
public class AccountManageController {

	@RequestMapping(value = "/accountList", method = RequestMethod.GET)
	public String accessAccountList() {
		System.out.println("AccountManageController-accountList");
		return "/accountManage/accountList";
	}
	
}
