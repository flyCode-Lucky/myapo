package com.sy.service;


import com.sy.pojo.AdminInfo;

public interface AdminS {

	public AdminInfo login(String loginName,String password);
	
	public boolean updatePassword(String newPassword,String loginName,String password);
}
