package com.test.main.login.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.main.login.dto.UserDto;


public interface UserDao {
	public UserDto loginCheck(UserDto userDto) throws Exception;
}
