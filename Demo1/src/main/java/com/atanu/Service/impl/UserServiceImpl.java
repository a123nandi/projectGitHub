package com.atanu.Service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.atanu.dao.UserDao;
import com.atanu.model.User;

@Service
public class UserServiceImpl {

	@Autowired
	private UserDao userDao;
	
	@Transactional
	public void addUser(User u){
		this.userDao.addUser(u);
	}
	public void updatePerson(User u){
		userDao.updatePerson(u);
	
	}
	
	public List<User> listUser(){
		return userDao.listUser();
	}
	public User getUserById(int id){
		return userDao.getUserById(id);
	}
	public void removeUser(int id){
		userDao.removeUser(id);
	}
	
	
}
