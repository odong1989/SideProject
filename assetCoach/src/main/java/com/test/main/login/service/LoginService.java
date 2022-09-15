package com.test.main.login.service;

import com.test.main.login.dto.UserDto;

public interface LoginService {
	public UserDto loginCheck(UserDto userDto) throws Exception;
}
