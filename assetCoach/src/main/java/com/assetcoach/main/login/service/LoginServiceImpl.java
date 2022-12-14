package com.assetcoach.main.login.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.assetcoach.main.login.dao.UserDao;
import com.assetcoach.main.login.dto.UserDto;

@Service("LoginService")
public class LoginServiceImpl implements LoginService{

	@Inject
	private UserDao userdao;
	
	@Override
	public UserDto loginCheck(UserDto userDto) throws Exception {
		System.out.println("LoginService-loginCheck");
		System.out.println("UserEmail:"+userDto.getUserEmail());
		System.out.println("UserPassword:"+userDto.getUserPassword());
		return userdao.loginCheck(userDto);
	}
}
