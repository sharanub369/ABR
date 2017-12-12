package com.abr.school.util;

import java.io.Serializable;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.abr.school.model.Role;
import com.abr.school.model.User;
import com.abr.school.services.LoginService;

public class MyProfileDetailsService implements UserDetailsService, Serializable {

	@Autowired
	LoginService loginService;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		String grantAuthority = "ROLE_USERl̥";
		if (username == null) {
			throw new UsernameNotFoundException("Invalid User Name");
		}

		User user = loginService.getUserByName(username);
		if (user != null) {
			Role role = loginService.getUserRoleByID(user.getID());
			grantAuthority = role.getRoleName();
			return new MyProfileDetails(user, grantAuthority);
		}

		return null;
	}

}
