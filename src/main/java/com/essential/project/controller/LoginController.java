package com.essential.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.essential.project.dto.Login;
import com.essential.project.service.UserService;



@Controller
@RequestMapping(value="admin")
@SessionAttributes("userInfo")
public class LoginController {

	@Autowired
	private UserService userService;
	

	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String dashboard(Model model, HttpSession session) {
		/*if (session.getAttribute("userInfo") == null) {
			return "redirect:/login";
		}*/
	
		return "admin/dashboard";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(HttpSession session) {

		if (session.getAttribute("userInfo") != null) {

			return "redirect:/";
		}
		return "Login";
	}

	@RequestMapping(value = "/verify", method = RequestMethod.POST)
	public String verify(@ModelAttribute("login") Login user, Model model, HttpSession session) {

		Login loginUser = userService.findByUserNameAndPassword(user.getUsername(), user.getPassword());
		System.out.println(loginUser);
		if (loginUser != null) {
			
			session.setAttribute("role", loginUser.getRole());
			session.setAttribute("userInfo", loginUser);
			model.addAttribute("userObject", loginUser);

			return "redirect:dashboard";
		}
		model.addAttribute("errorMessage", "Invalid Username or Password");
		model.addAttribute("page", "Login");
		return "Login";

	}

	@RequestMapping(value = "success", method = RequestMethod.GET)
	public String success(@ModelAttribute("login") Login userModel) {

		System.out.println("Success controller " + userModel.getUsername());
		userService.addUser(userModel);
		return "Success";
	}

	/**
	 * Redirects to home page after logout success
	 * 
	 * @return
	 */
	@RequestMapping(value="/dologout")
	public String doLogout(HttpSession session, SessionStatus status) {
		status.setComplete();
		session.removeAttribute("userInfo");
		return "redirect:/login";
	}
	
	@RequestMapping(value="/innerdashboard", method=RequestMethod.GET)
	public String innerDashboard() {
		
		return "admin/backhome";
	}
	
	@RequestMapping(value={"/subreport"}, method=RequestMethod.GET)
	public String subreport() {
		
		return "admin/subreport";
	}
	
	@RequestMapping(value={"/everyDetailStats"}, method=RequestMethod.GET)
	public String everyDetailStats() {
		
		return "admin/innerdetail";
	}
	
	
	
	
	
	

}
