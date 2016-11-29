package com.websystique.springsecurity.dao;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.websystique.springsecurity.model.User;

@Repository("userDao")
public class UserDaoImpl extends AbstractDao<Integer, User> implements UserDao {

	public User findById(int id) {
		return getByKey(id);
	}

	public User findByLoginName(String loginName) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("loginName", loginName));
		return (User) crit.uniqueResult();
	}

	@Override
	public void save(User user) {
		persist(user);
	}

	
}
