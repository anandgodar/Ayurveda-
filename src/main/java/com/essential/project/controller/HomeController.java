package com.essential.project.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "main";
	}
	
	@RequestMapping(value="/contact",method=RequestMethod.GET)
	public String contact(){
		return "pages/contact";
	
	}
	
		
	@RequestMapping(value="/home",method=RequestMethod.GET)
	public String home(){
		return "pages/home";
	
	}
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(){
		return "pages/login";
	
	}
	

	@RequestMapping(value="/about",method=RequestMethod.GET)
	public String aboutMe(){
		return "pages/aboutMe";
	
	}
	
	@RequestMapping(value="/bookmark",method=RequestMethod.GET)
	public String bookmark(){
		return "pages/bookmark";
	
	}
	
	@RequestMapping(value="/signUp",method=RequestMethod.GET)
	public String signUp(){
		return "pages/signUp";
	
	}
	
	@RequestMapping(value="/users",method=RequestMethod.GET)
	public String users(){
		return "pages/user";
	
	}
	
	@RequestMapping(value="/diseaseSymptom",method=RequestMethod.GET)
	public String diseaseSymptom(){
		return "pages/home";
	
	}
	
	
	
}
