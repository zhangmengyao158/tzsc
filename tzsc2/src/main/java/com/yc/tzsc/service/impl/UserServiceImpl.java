package com.yc.tzsc.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.tzsc.entity.User;
import com.yc.tzsc.mapper.UserMapper;
import com.yc.tzsc.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public User login(User user) {
		
		return userMapper.findUser(user);
	}

	@Override
	public boolean register(User user) {
		
		boolean result = true;
		result &=  userMapper.RegisterUser(user);
		return result;
	}

	@Override
	public User detal(User user) {
		return userMapper.DetalUser(user);
	}

	@Override
	public boolean modifyUser(User user) {
		
		return userMapper.updateUser(user) > 0;
	}

	@Override
	public boolean modifyPassword(User user) {

		return userMapper.updatePwd(user) > 0;
	}

}
