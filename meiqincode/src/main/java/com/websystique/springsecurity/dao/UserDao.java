package com.websystique.springsecurity.dao;

import com.websystique.springsecurity.model.User;

public interface UserDao {

	User findById(int id);
	
	User findByLoginName(String loginName);
	
	void save(User user);
	
}

