package com.essential.project.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.essential.project.dto.Member;
import com.essential.project.dto.Begining;
import com.essential.project.dto.Login;
import com.essential.project.repository.UserRepository;

@Service
public class InitDB {
	
	@Autowired
	UserRepository userRepository;
	@PostConstruct
	public void init() {

		Login login = new Login();
		login.setUsername("Anand");
		login.setPassword("Godar");
		login.setRole("Admin");

		Member member = new Member();
		member.setFirstName("Anand");
		member.setLastName("Godar");
		member.setEmail("anandgodar@gmail.com");

		login.setMember(member);
		
	
		userRepository.save(login);
	}
}
