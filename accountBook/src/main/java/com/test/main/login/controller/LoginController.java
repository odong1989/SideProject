package com.test.main.login.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.main.login.dao.UserDao;
import com.test.main.login.dto.UserDto;
import com.test.main.login.service.LoginService;

@Controller
@RequestMapping("/login")
public class LoginController {

	
	@Autowired
	LoginService loginService;
	
	@RequestMapping(value = "/loginForm", method = RequestMethod.GET)
	public String accessLoginForm() {
		System.out.println("LoginController-accessLoginForm");
		return "/login/loginForm";
	}
	
	
	@RequestMapping(value = "/loginCheck", method = RequestMethod.POST)
	public String loginCheck(UserDto userDto, HttpServletRequest httpServletRequest ) throws Exception {
		//HttpSession httpSession = httpServletRequest.getSession();
	
		loginService.loginCheck(userDto);
		
		
		System.out.println("LoginController-loginCheck");
		return "/login/loginForm";
	}
	
}
