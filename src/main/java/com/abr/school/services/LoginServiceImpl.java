package com.abr.school.services;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Service;

import com.abr.school.dao.LoginDao;
import com.abr.school.model.Role;
import com.abr.school.model.User;


@Service("loginService")
public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginDao loginDao;
	
	@Override
	public User getUserByName(String userName) {
		return loginDao.getUserByName(userName);
	}

	@Override
	public Role getUserRoleByID(long userId) {
		return loginDao.getUserRoleByID(userId);
	}

}
