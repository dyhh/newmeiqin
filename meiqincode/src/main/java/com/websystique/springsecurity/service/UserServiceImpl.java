package com.websystique.springsecurity.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.websystique.springsecurity.dao.UserDao;
import com.websystique.springsecurity.model.User;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao dao;

	public User findById(int id) {
		return dao.findById(id);
	}

	@Override
	public User findByLoginName(String loginName) {
		return dao.findByLoginName(loginName);
	}

	@Override
	public boolean isRegisterLoginnameUnique(String loginName) {
		return null == dao.findByLoginName(loginName);
	}

	@Override
	public void save(User user) {
		dao.save(user);
	}

}
