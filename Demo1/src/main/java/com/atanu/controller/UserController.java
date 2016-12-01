package com.atanu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.atanu.Service.impl.UserServiceImpl;
import com.atanu.model.User;





@Controller
public class UserController {

	@Autowired
	private UserServiceImpl userService;
	
	@RequestMapping(value="/add/user", method=RequestMethod.POST)
	public String adduser(@ModelAttribute("user") User u)
	{
		u.setUser_role("ROLE_USER");
		/*u.setEmail("email");
		u.setId(1);*/
		
		userService.addUser(u);
		return "index";
	}
	
}
