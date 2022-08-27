package com.test.main.login.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.main.login.dto.UserDto;

@Repository
public class UserDaoImpl implements UserDao{
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public UserDto loginCheck(UserDto userDto) throws Exception{
		System.out.println("UserDaoImpl-loginCheck");
		System.out.println("UserEmail:"+userDto.getUserEmail());
		System.out.println("UserPassword:"+userDto.getUserPassword());
		return sqlSessionTemplate.selectOne("userMapper.loginCheck", userDto);
	}	
}
