package com.abr.school.services;

import com.abr.school.model.Role;
import com.abr.school.model.User;

public interface LoginService {

	public User getUserByName(String userName);
	public Role getUserRoleByID(long userId);
}
