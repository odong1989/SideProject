package com.test.main.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/login")
public class LoginController {

	//실행할 메서드 만들기
	@RequestMapping(value = "/loginForm", method = RequestMethod.GET)
	public String accessLoginForm() {
		//viewResolver가 이 메소드를 실행하게 된다.
		//경로는 아래와 같게 된다→ /WEB-INF/views/ + login/loginForm + .jsp
		System.out.println("LoginController-");
		return "/login/loginForm";
	}
	
}
