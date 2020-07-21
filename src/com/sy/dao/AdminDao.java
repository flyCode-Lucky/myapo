package com.sy.dao;

import org.apache.ibatis.annotations.Param;

import com.sy.pojo.AdminInfo;

public interface AdminDao {

	public AdminInfo login(@Param("loginName") String loginName,@Param("password") String password);
}
