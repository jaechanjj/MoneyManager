package com.chan.user.model.service;

import com.chan.user.model.UserDto;
import com.chan.user.model.dao.UserDao;

public class UserServiceImpl implements UserService{

	private UserDao userDao;
	
	@Override
	public void joinMember(UserDto userDto) {
		userDao.joinUser(userDto);
	}

}
