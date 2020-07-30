package com.sy.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.sy.pojo.Orders;

public interface OrdersDao {

	public List<Orders> findall(@Param("pagestart") int pagestart,@Param("pagesize") int pagesize,
			@Param("userName") String userName,@Param("dishesName") String dishesName,@Param("orderTime")String orderTime );
	
	public int gettotal(@Param("userName") String userName,@Param("dishesName") String dishesName,@Param("orderTime")String orderTime);

}
