package com.sy.service;


import org.apache.ibatis.annotations.Param;

import com.sy.pojo.AdminInfo;

public interface AdminS {

	public AdminInfo login(String loginName,String password);
	
	public boolean update(String newPassword,String loginName,String password);	
		
}
