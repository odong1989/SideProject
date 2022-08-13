package com.test.main.login.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.test.main.login.dao.UserDao;
import com.test.main.login.dto.UserDto;

@Service("LoginService")
public class LoginServiceImpl implements LoginService{

	@Inject
	private UserDao userdao;
	
	@Override
	public UserDto loginCheck(UserDto userDto) throws Exception {
		System.out.println("LoginService-loginCheck");
		return userdao.loginCheck(userDto);
	}
}
