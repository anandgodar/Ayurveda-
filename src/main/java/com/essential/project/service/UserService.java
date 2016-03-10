package com.essential.project.service;

import java.util.List;


import com.essential.project.dto.Login;


public interface UserService {
	public boolean addUser(Login userModel);

	public List<Login> getAllUsers();

	public Login getUserById(int id);

	public boolean updateUser(Login user);

	public void deleteUser(int id);

	public Login findByUserNameAndPassword(String username, String password);

}
