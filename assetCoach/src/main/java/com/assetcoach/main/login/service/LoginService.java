package com.assetcoach.main.login.service;

import com.assetcoach.main.login.dto.UserDto;

public interface LoginService {
	public UserDto loginCheck(UserDto userDto) throws Exception;
}
