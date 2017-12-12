package com.abr.school.util;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;
import com.abr.school.model.User;

@Component
public class CustomAuthenticationHandler implements AuthenticationProvider {

	@Autowired
	MyProfileDetailsService myProfileDetailsService;

	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {

		String userName = authentication.getName();
		String password = authentication.getCredentials().toString();
		UserDetails userDetails = myProfileDetailsService.loadUserByUsername(userName);
		if (userDetails != null && userDetails.getPassword().equalsIgnoreCase(password)) {

			return new UsernamePasswordAuthenticationToken(userDetails, null, userDetails.getAuthorities());
		}

		return null;
	}

	@Override
	public boolean supports(Class<?> authentication) {
		return authentication.equals(UsernamePasswordAuthenticationToken.class);
	}

}
