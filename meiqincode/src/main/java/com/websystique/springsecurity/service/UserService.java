package com.websystique.springsecurity.service;

import com.websystique.springsecurity.model.User;

public interface UserService {

	User findById(int id);
	
	User findByLoginName(String loginName);
	
	boolean isRegisterLoginnameUnique(String loginName);
	
	void save(User user);
	
}