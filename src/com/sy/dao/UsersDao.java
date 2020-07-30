package com.sy.dao;

import org.apache.ibatis.annotations.Param;

import com.sy.pojo.Users;

public interface UsersDao {
		
	public Users login(@Param("loginName") String loginName,@Param("password") String password );
}
