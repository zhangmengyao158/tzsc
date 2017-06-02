package com.yc.tzsc.service;

import com.yc.tzsc.entity.User;

public interface UserService {

	User login(User user);

	boolean register(User user);

	User detal(User str);

	boolean modifyUser(User user);

	boolean modifyPassword(User user);


}
