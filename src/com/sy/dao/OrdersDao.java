package com.sy.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.sun.org.glassfish.gmbal.ParameterNames;
import com.sy.pojo.Orders;

public interface OrdersDao {

	public List<Orders> findall(@Param("pagestart") int pagestart,@Param("pagesize") int pagesize,
			@Param("userName") String userName,@Param("dishesName") String dishesName,@Param("orderTime")String orderTime,@Param("userId") String userId);
	
	public int gettotal(@Param("userName") String userName,@Param("dishesName") String dishesName,@Param("orderTime")String orderTime);

	public void delete(@Param("userId") int userId);
	
	
	public void add(@Param("userId") int userId,@Param("dishesName") String dishesName,@Param("number") int number,@Param("price") double price,@Param("numPrice") double numPrice);
;}
