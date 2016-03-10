package com.essential.project.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.essential.project.dto.Login;
import com.essential.project.repository.UserRepository;
import com.essential.project.service.UserService;
@Service
public class userServiceImpl implements UserService {
	
	@Autowired
	UserRepository userRepository;
	
	@Override
	public boolean addUser(Login user) {
		if(userRepository.save(user)!=null){
			return true;
		}
		
		return false;
	
	}

	@Override
	public List<Login> getAllUsers() {
		return userRepository.findAll();
	}

	@Override
	public Login getUserById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean updateUser(Login user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void deleteUser(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Login findByUserNameAndPassword(String username, String password) {
		return userRepository.findByusernameAndPassword(username,password);
	}
	
	
	
}
