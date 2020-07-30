package com.sy.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sy.dao.AdminDao;
import com.sy.pojo.AdminInfo;

@Service
public class AdminSI implements AdminS{

	@Autowired
	private AdminDao dao;
	
	public AdminInfo login(String loginName,String password) {		
		return dao.login(loginName, password);
	}

	public boolean update(String newPassword, String loginName, String password) {
		
		return dao.update(newPassword, loginName, password);
	}

}
