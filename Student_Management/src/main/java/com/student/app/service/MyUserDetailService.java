package com.student.app.service;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public interface MyUserDetailService {

	UserDetails loadUserByUsername(String username) throws UsernameNotFoundException;

}