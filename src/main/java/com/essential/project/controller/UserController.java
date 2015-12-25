package com.essential.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.essential.project.dto.Login;
import com.essential.project.service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService userService;

	@RequestMapping(value = "/user/getAllUsers")
	@ResponseBody
	public List<Login> getAllUsers() {
		return userService.getAllUsers();
	}
	
	@RequestMapping(value = "/user/saveUser")
	@ResponseBody
	public boolean saveUser(@RequestBody Login user) {
		return userService.addUser(user);
	}

}
