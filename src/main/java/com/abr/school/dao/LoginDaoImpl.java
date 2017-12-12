package com.abr.school.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.abr.school.model.Role;
import com.abr.school.model.User;
import com.abr.school.model.UserRoles;

@Repository
@Transactional
public class LoginDaoImpl implements LoginDao {

	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		sessionFactory = sessionFactory;
	}

	@Override
	public User getUserByName(String userName) {
		Query query = sessionFactory.getCurrentSession().createQuery("from User where userName=:userName");
		query.setParameter("userName", userName);
		List users = query.list();
		User user = null;
		for (int i = 0; i < users.size(); i++) {
			user = (User) users.get(i);
		}
		return user;
	}

	@Override
	public Role getUserRoleByID(long userId) {
		Query query=sessionFactory.getCurrentSession().createQuery("from UserRoles where userID=:userId ");
		query.setParameter("userId", userId);
		List rolesIds=query.list();
		
		Role role=null;
		for(int i=0;i<rolesIds.size();i++)
		{
			UserRoles userRoles=(UserRoles) rolesIds.get(i);
			Query query1=sessionFactory.getCurrentSession().createQuery("from Role where roleID=:roleID ");
			query1.setParameter("roleID", userRoles.getRoleId());
			List roles=query1.list();
			for(int j=0;j<roles.size();j++)
			{
				role=(Role) roles.get(j);
			}
		}
		return role;
	}

}
