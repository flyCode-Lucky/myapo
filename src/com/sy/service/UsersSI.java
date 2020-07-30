package com.sy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sy.dao.UsersDao;
import com.sy.pojo.ShoppingCar;
import com.sy.pojo.Users;

@Service
public class UsersSI implements UsersS{

	@Autowired
	private UsersDao dao;
	
	public Users login(String loginName, String password) {
		return dao.login(loginName, password);
	}

}
