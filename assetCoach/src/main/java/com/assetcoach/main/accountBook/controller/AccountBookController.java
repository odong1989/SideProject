package com.assetcoach.main.accountBook.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.assetcoach.main.accountBook.dto.AccountBookDto;
import com.assetcoach.main.accountBook.dto.RecordOfTransactionsDto;
import com.assetcoach.main.accountBook.service.AccountBookService;
import com.assetcoach.main.accountBook.service.AccountBookServiceImpl;
import com.assetcoach.main.accountManager.dto.AccountDto;
import com.assetcoach.main.accountManager.dto.BankDto;
import com.assetcoach.main.accountManager.service.AccountManageService;

@Controller
@RequestMapping("/accountBook")
public class AccountBookController {
	
	@Autowired AccountBookService accountBookService;
	@Autowired AccountManageService accountManageService;
	
	@RequestMapping(value = "/recordDepositAndWithdrawal", method = RequestMethod.GET)
	public String accessLoginForm(Model model, HttpServletRequest httpServletRequest) throws Exception {
		System.out.println("AccountBookController-recordDepositAndWithdrawal");

		HttpSession httpSession = httpServletRequest.getSession();
		
		if(httpSession.getAttribute("userEmail")!=null){
			//model.addAttribute("loginUser", resultUserDto );
			System.out.println("AccountManageController-accountList-login success");
			
			int userIdx = (Integer) httpSession.getAttribute("userIdx");
			List<AccountDto> userBankAccountList = accountManageService.bankAccountOfUser( userIdx );
			List<RecordOfTransactionsDto> listOfRecordOfTransaction = accountBookService.listOfRecordOfTransaction(userIdx);
			
			model.addAttribute("userEmail", httpSession.getAttribute("userEmail") );
			model.addAttribute("userIdx", httpSession.getAttribute("userIdx") );
			model.addAttribute("userBankAccountList", userBankAccountList );
			model.addAttribute("listOfRecordOfTransaction", listOfRecordOfTransaction );
						
			System.out.println("AccountBookController-move to recordDepositAndWithdrawal");
			return "/accountBook/recordDepositAndWithdrawal";

		}		
		else {
			System.out.println("AccountManageController-accountList-login failed");
			return "/login/loginForm";			
		}
		
	}

	@RequestMapping(value="addRecordDepositAndWithdrawal", method= RequestMethod.POST)
	public String manageTheRecordOfTransactions(RecordOfTransactionsDto recordOfTransactionsDto, Model model, HttpServletRequest httpServletRequest) throws Exception {
		System.out.println("AccountBookController-addRecordDepositAndWithdrawal");
	
		HttpSession httpSession = httpServletRequest.getSession();
		
		if(httpSession.getAttribute("userEmail")!=null){
			
			//save to DB
			accountBookService.addRecordDepositAndWithdrawal(recordOfTransactionsDto);
			
			//prepare the jsp page data
			int userIdx = (Integer) httpSession.getAttribute("userIdx");
			List<AccountDto> userBankAccountList = accountManageService.bankAccountOfUser( userIdx );
			
			model.addAttribute("userEmail", httpSession.getAttribute("userEmail") );
			model.addAttribute("userIdx", httpSession.getAttribute("userIdx") );
			model.addAttribute("userBankAccountList", userBankAccountList );

			System.out.println("AccountBookController-complete addRecordDepositAndWithdrawal");
			System.out.println("AccountBookController-move to recordDepositAndWithdrawal");
			return "/accountBook/recordDepositAndWithdrawal";
		}		

		else {
			System.out.println("AccountManageController-accountList-login failed");
			return "/login/loginForm";			
		}	
	
	
	}
		
	/*
	@RequestMapping(value="manageTheRecordOfTransactions", method= RequestMethod.POST)
	public String manageTheRecordOfTransactions(AccountBookDto accountBookDto) throws Exception {
		System.out.println("AccountBookController-manageTheRecordOfTransactions");
		accountBookService.manageTheRecordOfTransactions(accountBookDto);
		return "/accountBook/recordDepositAndWithdrawal";
	}
	 */
}
