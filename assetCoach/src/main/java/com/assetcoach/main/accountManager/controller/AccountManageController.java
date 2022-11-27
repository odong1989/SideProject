package com.assetcoach.main.accountManager.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.assetcoach.main.accountManager.dto.AccountDto;
import com.assetcoach.main.accountManager.dto.BankDto;
import com.assetcoach.main.login.dto.UserDto;
import com.assetcoach.main.accountManager.service.AccountManageService;
import com.assetcoach.main.login.service.LoginService;

@Controller
@RequestMapping("/accountManage")
public class AccountManageController {
	
	@Autowired AccountManageService accountManageService;
	@Autowired LoginService loginService;
	
	@RequestMapping(value = "/accountList", method = RequestMethod.GET)
	public String accessAccountList(Model model, HttpServletRequest httpServletRequest) throws Exception  {
		System.out.println("AccountManageController_accountList");

		HttpSession httpSession = httpServletRequest.getSession();
		
		System.out.println("LoginUser UserEmail:"+httpSession.getAttribute("userEmail") );
		System.out.println("LoginUser UserIdx:"+httpSession.getAttribute("userIdx") );
		
		if(httpSession.getAttribute("userEmail")!=null){
			//model.addAttribute("loginUser", resultUserDto );
			System.out.println("AccountManageController-accountList-login success");
			
			int userIdx = (Integer) httpSession.getAttribute("userIdx");
			List<AccountDto> userBankAccountList = accountManageService.bankAccountOfUser( userIdx );
			List<BankDto> bankList = accountManageService.bankListOfSelect();
			
			model.addAttribute("userEmail", httpSession.getAttribute("userEmail") );
			model.addAttribute("userIdx", httpSession.getAttribute("userIdx") );
			model.addAttribute("bankList", bankList );
			model.addAttribute("userBankAccountList", userBankAccountList );
			
			System.out.println("move to accountList");
			return "/accountManage/accountList";			
		}		
		else {
			System.out.println("AccountManageController-accountList-login failed");
			return "/login/loginForm";			
		}
		
	}
	
	@RequestMapping(value="/addUserBankAccount", method= RequestMethod.POST)
	public String addUserBankAccount(Model model, AccountDto accountDto, HttpServletRequest httpServletRequest) throws Exception {
		System.out.println("execute addUserBankAccount");

		HttpSession httpSession = httpServletRequest.getSession();
		
		System.out.println("LoginUser UserEmail:"+httpSession.getAttribute("userEmail") );
		System.out.println("LoginUser UserIdx:"+httpSession.getAttribute("userIdx") );

		
		//accountDto.setUserIdx( httpSession.getAttribute("userIdx") );
		//accountDto.setUserIdx(1);
		accountDto.setUserIdx( accountDto.getUserIdx() );
		
		accountManageService.addUserBankAccount(accountDto);
		

		int userIdx = (Integer) httpSession.getAttribute("userIdx");
		List<AccountDto> userBankAccountList = accountManageService.bankAccountOfUser( userIdx );
		List<BankDto> bankList = accountManageService.bankListOfSelect();
		
		
		model.addAttribute("userEmail", httpSession.getAttribute("userEmail") );
		model.addAttribute("userIdx", httpSession.getAttribute("userIdx") );
		model.addAttribute("bankList", bankList );
		model.addAttribute("userBankAccountList", userBankAccountList );
		
		
		return "/accountManage/accountList";
	}
	
}
