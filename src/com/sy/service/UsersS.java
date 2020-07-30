package com.sy.service;

import org.apache.ibatis.annotations.Param;

import com.sy.pojo.Users;

public interface UsersS {

	public Users login(@Param("loginName") String loginName,@Param("password") String password );
}
