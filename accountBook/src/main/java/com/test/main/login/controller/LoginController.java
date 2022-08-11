package com.test.main.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/login")
public class LoginController {

	//������ �޼��� �����
	@RequestMapping(value = "/loginForm", method = RequestMethod.GET)
	public String accessLoginForm() {
		//viewResolver�� �� �޼ҵ带 �����ϰ� �ȴ�.
		//��δ� �Ʒ��� ���� �ȴ١� /WEB-INF/views/ + login/loginForm + .jsp
		System.out.println("LoginController-");
		return "/login/loginForm";
	}
	
}
