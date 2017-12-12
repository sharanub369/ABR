package com.abr.school.dao;

import com.abr.school.model.Role;
import com.abr.school.model.User;

public interface LoginDao {
	public User getUserByName(String userName);
	public Role getUserRoleByID(long userId);
}
