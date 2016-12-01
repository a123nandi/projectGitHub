package com.atanu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.atanu.model.Product;
import com.atanu.model.User;



@Controller
public class HomeController {

	@RequestMapping("/")
	public String index(){
		return "index";
	}
	
	
	@RequestMapping("/loginUser")
	public String Login(){
		return "login";
	}
	
	@ModelAttribute("user")
	public User createUser()
	{
		
		return new User();
	}
	
	
	
	
	@RequestMapping("/register")
	public String register(){
		return "register";
	}
	
	
	@ModelAttribute("product")
	public Product addproduct(){
		return new Product();
	}
	
	
	@RequestMapping("/addPro")
	public String addProduct(){
		return "product";
	}
}
