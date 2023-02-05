package com.student.app.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.student.app.model.User;
import com.student.app.config.MyUserDetails;
import com.student.app.repository.UserRepository;
import com.student.app.service.MyUserDetailService;


@Service
public class MyUserDetailsService implements UserDetailsService, MyUserDetailService {
	
	@Autowired
	UserRepository userRepository;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = userRepository.findByUsername(username);
		if(user == null) {
			throw new UsernameNotFoundException("User is not available");
		} else {
			
			return new MyUserDetails(user);
		}
	}

}

