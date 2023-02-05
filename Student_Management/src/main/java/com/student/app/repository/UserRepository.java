package com.student.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.student.app.model.User;



@Repository
public interface UserRepository extends JpaRepository<User, Integer>{
	
	User findByUsername(String username);
	
	

}
