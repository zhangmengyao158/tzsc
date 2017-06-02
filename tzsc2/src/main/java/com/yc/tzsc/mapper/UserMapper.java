package com.yc.tzsc.mapper;

import com.yc.tzsc.entity.User;

public interface UserMapper {

	User findUser(User user);

	boolean RegisterUser(User user);

	User DetalUser(User user);

	int updateUser(User user);

	int updatePwd(User user);

}
